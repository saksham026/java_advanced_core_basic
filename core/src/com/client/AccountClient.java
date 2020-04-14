package com.client;

import com.serviceSummary.AccountInterface;
import com.provider.AccountProvider;

public class AccountClient {

	public static void main(String args[])
	{
		AccountInterface as=AccountProvider.getObject();
		as.openAccount(1, "savings", 1000);
		System.out.println(as.deposit(1, 100000));
		System.out.println(as.withdraw(1, 2000));
		System.out.println(as.balanceEnquiry(1));
		
		as.openAccount(2, "savings", 1000);
		as.fundTransfer(1, 2, 1000);
		
		as.transactionHistory(1);
		as.accDetails(1);
	}
}
