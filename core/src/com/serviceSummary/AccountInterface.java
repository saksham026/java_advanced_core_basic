package com.serviceSummary;

public interface AccountInterface {

	int openAccount(int accNo,String type,float amt);
	float deposit(int accNo,float amt);
	float withdraw(int accNo,float amt);
	float balanceEnquiry(int accNo);
	void fundTransfer(int accNo1,int accNo2,float amt);
	void transactionHistory(int accNo);
	String accDetails(int accNo);
	
}
