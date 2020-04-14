package com;

import org.brunocvcunha.instagram4j.Instagram4j;

public class SimpleEmbedded {
   public static void main(String []args) {
      
      Instagram4j instagram = Instagram4j.builder().username("gupta.saksham269").password("Saksham026").build();
      instagram.setup();
      instagram.login();
      
   }	
}	