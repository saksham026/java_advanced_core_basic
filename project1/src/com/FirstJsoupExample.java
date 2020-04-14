package com;

import java.io.IOException;  
import org.jsoup.Jsoup;  
import org.jsoup.nodes.Document;  
import org.jsoup.nodes.Element;  
import org.jsoup.select.Elements;  

public class FirstJsoupExample{  
    public static void main( String[] args ) throws IOException{  
                Document doc = Jsoup.connect("http://trialdemo.appspot.com/gupta.saksham269").ignoreContentType(true).timeout(0).get();  
                Elements inputElements = doc.getElementsByTag("body");  
                for (Element inputElement : inputElements) { 
                	
                    String key = inputElement.text();
                    System.out.println("Param name: "+key); 
                    
                    String[] words=key.split(" ");
                    
                    System.out.println(words[0]);
                    System.out.println(words[1]);
                    
                }  
    }  
}  