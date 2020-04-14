package com;

import org.brunocvcunha.instagram4j.Instagram4j;

public class insta {
	
	public static void main(String args[])
	{
    Instagram4j instagram = Instagram4j.builder().username("gupta.saksham269").password("Saksham026").build();
    instagram.setup();
    //instagram.login();
	
    InstagramSearchUsernameResult userResult = instagram.sendRequest(new InstagramSearchUsernameRequest("github"));
    System.out.println("ID for @github is " + userResult.getUser().getPk());
    System.out.println("Number of followers: " + userResult.getUser().getFollower_count());
	}
}
