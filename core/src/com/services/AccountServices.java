package com.services;

import com.beans.*;
import com.serviceSummary.AccountInterface;

public class AccountServices implements AccountInterface{

	Account a[]=new Account[5];
	Transaction t;
	private int i=0; 
	
	public int validateAcc(int accNo)
	{
		for(int j=0;j<=i;j++)
		{
		if(a[j].getAccNo()==accNo)
		{
			return j;
		
		}
		}
		return -1;
	}
	
	public int openAccount(int accNo,String type,float amt)
	{
		
		a[i]=new Account(accNo,type,amt);
		
		t=new Transaction("0","none",new Date(26,9,1998));
		int k=i;
		i++;
		assert(k>=0):"accont number should not be negative";
		return a[k].getAccNo();
	}
	
	public float deposit(int accNo,float amt)
	{
		int v=validateAcc(accNo);
		if(v!=-1)
		{
			a[v].setAccBal(a[v].getAccBal()+amt);
			t.setT_id("1");
			t.setT_type("deposit");
			t.setT_date(new Date(26,9,1998));
			assert(Integer.parseInt(t.getT_id())>0):"transcation id is coming negative";
			
		}
		return a[v].getAccBal();
	}
	
	public float withdraw(int accNo,float amt)
	{
		int v=validateAcc(accNo);
		if(v!=-1)
		{
			if(a[v].getAccBal()>5000)
			{
				a[v].setAccBal(a[v].getAccBal()-amt);
				t.setT_id("1");
				t.setT_type("withdraw");
				t.setT_date(new Date(26,9,1998));
			
			}
			else
				return a[v].getAccBal();
		}
		assert(a[v].getAccBal()>0):"money in the account is less than 0";
		return a[v].getAccBal();
	}
	
	public float balanceEnquiry(int accNo)
	{
		int v=validateAcc(accNo);
		if(v!=-1)
		{
			return a[v].getAccBal();
		}
		return 0.0f;
		
	}
	
	public void fundTransfer(int accNo1,int accNo2,float amt)
	{
		int v1=validateAcc(accNo1);
		int v2=validateAcc(accNo2);
		if(v1!=-1&&v2!=-1)
		{	
				if(a[v1].getAccBal()>5000)
				{
					a[v1].setAccBal(a[v1].getAccBal()-amt);
					a[v2].setAccBal(a[v2].getAccBal()+amt);
					
					t.setT_id("1");
					t.setT_type("fund transfer");
					t.setT_date(new Date(26,9,1998));
					assert(a[v1].getAccBal()>0):"money in the account is less than 0";
				}
		}
	}
	
	public void transactionHistory(int accNo)
	{
		int v=validateAcc(accNo);
		if(v!=-1)
		System.out.println(t);
	}
	
	public String accDetails(int accNo)
	{
		int v=validateAcc(accNo);
		if(v!=-1)
		{
			System.out.println(a[v]);
		}
		return "No record exist";
	}
}
