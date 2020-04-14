package com.client;

import com.Exceptions.invalidCredentialException;
import com.Exceptions.invalidInputException;
import com.provider.UserProvider;
import com.serviceSummary.UserInterface;

public class userClient {

	public static void main(String args[])
	{
		UserInterface us=UserProvider.getObject();
		try
		{
		us.signUp("saksham2", "qwerty1111", "why");
		us.signIn("saksham", "qwerty1111");
		String pass=us.forgetPassword("saksham", "why132526");
		System.out.println("you have changed password to:"+pass);
		
		String response=us.updatePassword("saksham", "abc","abc2");
		System.out.println("updated password is:"+response);
	
		}
		catch(invalidCredentialException e)
		{
			e.printStackTrace();
		}
		catch(invalidInputException e)
		{
			e.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
				
		
	}
}
