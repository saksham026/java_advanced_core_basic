package first;

import first.Bank.lock;

class Bank {
	
	private int liab;
	private int net;
	
	Bank(int liab)
	{
		this.liab=liab;
	}
	
	public void displayNet(lock l)
	{
		System.out.println("net value in bank is:"+(l.getAssetVal()-liab));
	}

	class lock{
		
		private int assetVal;
		
		lock(int val)
		{
			this.assetVal=val;
		}
		
		public void display()
		{
			System.out.println("asset value in locker is:"+assetVal);
		}
		
		public int getAssetVal()
		{
			return assetVal;
		}
	}
}

public class BankLocker
{
	public static void main(String args[]) 
	{
		Bank b=new Bank(100);
		lock l=b.new lock(1000);
		l.display();
		b.displayNet(l);
		
	}
}