package com.provider;

import com.serviceSummary.AccountInterface;
import com.services.AccountServices;

public class AccountProvider {
	
	public static AccountInterface getObject() {
	
		return new AccountServices();
	}

}
