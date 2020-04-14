package com.serviceSummary;

import com.Exceptions.invalidCredentialException;
import com.Exceptions.invalidInputException;

public interface UserInterface {

	void signUp(String userName,String password,String securityQn) throws invalidInputException;
	boolean signIn(String userName,String password) throws invalidCredentialException;
	String updatePassword(String userName,String password,String newPass) throws invalidInputException,invalidCredentialException;
	String forgetPassword(String userName,String securityQn);
}
