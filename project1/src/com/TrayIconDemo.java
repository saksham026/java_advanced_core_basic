package com;

import java.awt.AWTException;
import java.awt.Image;
import java.awt.SystemTray;
import java.awt.Toolkit;
import java.awt.TrayIcon;
import java.awt.TrayIcon.MessageType;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TrayIconDemo {

    public static void main(String[] args) throws AWTException, ParseException {
        if (SystemTray.isSupported()) {
            TrayIconDemo td = new TrayIconDemo();
            td.displayTray();
        } else {
            System.err.println("System tray not supported!");
        }
    }

    public void displayTray() throws AWTException, ParseException {
        //Obtain only one instance of the SystemTray object
        SystemTray tray = SystemTray.getSystemTray();

        //If the icon is a file
        Image image = Toolkit.getDefaultToolkit().createImage("icon.png");
        //Alternative (if the icon is on the classpath):
        //Image image = Toolkit.getDefaultToolkit().createImage(getClass().getResource("icon.png"));

        TrayIcon trayIcon = new TrayIcon(image, "Tray Demo");
        //Let the system resize the image if needed
        trayIcon.setImageAutoSize(true);
        //Set tooltip text for the tray icon
        trayIcon.setToolTip("System tray icon demo");
        tray.add(trayIcon);

        while(true)
        {
        
        Calendar cal = Calendar.getInstance();
        Date date=cal.getTime();
        DateFormat dateFormat = new SimpleDateFormat("HH:mm");
        String formattedDate=dateFormat.format(date);
        System.out.println("Current time of the day is "+ formattedDate);
        
        String time="18:49";
        DateFormat sdf = new SimpleDateFormat("HH:mm");
        Date d1 = sdf.parse(time);
        System.out.println(sdf.format(d1));
        
        
        
        if((sdf.format(d1)).equals(formattedDate)){
        	 trayIcon.displayMessage("daily reminder 1", "notification demo", MessageType.NONE);
             break;
           }

    }
}
}
