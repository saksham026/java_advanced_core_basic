package com;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;

public class TexttoImage 
{
    
    public static void main(String[] args) throws Exception 
    {
        String text = "JavaInfinite";
        BufferedImage image = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);// Represents an image with 8-bit RGBA color components packed into integer pixels.
        Graphics2D graphics2d = image.createGraphics();
        Font font = new Font("TimesNewRoman", Font.BOLD, 12);
        graphics2d.setFont(font);
        FontMetrics fontmetrics = graphics2d.getFontMetrics();
        int width = fontmetrics.stringWidth(text);
        int height = fontmetrics.getHeight();
        graphics2d.dispose();
 
        image = new BufferedImage(245, 206, BufferedImage.TYPE_INT_ARGB);
        
        graphics2d = image.createGraphics();
        graphics2d.setRenderingHint(RenderingHints.KEY_ALPHA_INTERPOLATION, RenderingHints.VALUE_ALPHA_INTERPOLATION_QUALITY);
        graphics2d.setRenderingHint(RenderingHints.KEY_COLOR_RENDERING, RenderingHints.VALUE_COLOR_RENDER_QUALITY);
        graphics2d.setFont(font);
        graphics2d.setBackground(Color.RED);
        fontmetrics = graphics2d.getFontMetrics();
        
        
        File fi = new File("e:/speaker.jpg");
        BufferedImage image1 = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        
        image1 = ImageIO.read(fi);
        System.out.println("Width:" + image1.getWidth());
        System.out.println("Height:" + image1.getHeight());
        
		graphics2d.drawImage(image1, 0,0, null);
		graphics2d.setColor(Color.GREEN);
        graphics2d.drawString(text, 0, 10);		//0 is x and 10 is y
        graphics2d.setColor(Color.GREEN);
        graphics2d.drawString(text, 0, 30);		//0 is x and 10 is y
        
        graphics2d.dispose();
        try {
            ImageIO.write(image, "png", new File("e:/Sample11.jpg"));
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        
        
    }
}