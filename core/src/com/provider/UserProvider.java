package com.provider;

import com.serviceSummary.UserInterface;
import com.services.UserServices;

public class UserProvider {

	public static UserInterface getObject() {
		
		return new UserServices();
	}
}
