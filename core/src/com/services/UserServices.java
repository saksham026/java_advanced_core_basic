package com.services;

import com.Exceptions.invalidCredentialException;
import com.Exceptions.invalidInputException;
import com.beans.User;
import com.dao.daoInterface;
import com.dao.impl.userDatabase;
import com.provider.DaoProvider;
import com.serviceSummary.UserInterface;

public class UserServices implements UserInterface{

	private User us;
	private daoInterface ud;
	
	public UserServices()
	{
		ud=DaoProvider.getDbObject();
		
	}

	public void signUp(String userName,String password,String securityQn) throws invalidInputException
	{
		
		
		if(password.length()<8)
		{
			throw new invalidInputException("length of password should be minimum 8");
			
		}
		else if(password.contains("@"))
		{
			throw new invalidInputException("password should have @");
			
		}
		else if(userName.length()<6)
		{
			throw new invalidInputException("length of username is less");
			
			
		}
	
		us=new User(userName,password,securityQn);
		int count=ud.register(us);
		assert(count>0):"not able to add record of user";
		
	}
	
	public boolean signIn(String userName,String password) throws invalidCredentialException
	{
		User u2=ud.check(userName);
		if(u2!=null)
		{
			if(u2.getPassword().equals(password))
			{
				return true;
			}
			else
			{
				throw new invalidCredentialException("you are not allowed to signin as credentials are wrong");
			}

		}
		else
		{
			throw new invalidCredentialException("your username or password does not exist");
		}
	}
	
	public String updatePassword(String userName,String password,String newPass) throws invalidInputException,invalidCredentialException
	{
		
		if(password.length()<8)
		{
			throw new invalidInputException("length of password should be minimum 8");
			
		}
		else if(password.contains("@"))
		{
			throw new invalidInputException("password should have @");
			
		}
		else if(userName.length()<6)
		{
			throw new invalidInputException("length of username is less");
			
		}
		
		User u2=ud.check(userName);
		if(u2!=null)
		{
			if(u2.getPassword().equals(password))
			{
				u2.setPassword(newPass);
				int count=ud.update(u2);
				assert(count>0):"not registered";
				return u2.getPassword();
				
			}
			else
			{
				throw new invalidCredentialException("incorrect userName");
			}
		}
		else
		{
			throw new invalidCredentialException("your username or password does not exist");
		}
	}
	
	public String forgetPassword(String userName,String securityQn)
	{
	
		if(us.getUserName().equals(userName)&&us.getSecurityQn().equals(securityQn))
		{
			us.setPassword("qwerty");
		}
		return us.getPassword();
	}
	
	
}
