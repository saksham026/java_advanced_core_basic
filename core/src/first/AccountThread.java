package first;

public class AccountThread {

	private int bal;

	public AccountThread(int bal) {
		super();
		this.bal = bal;
		
	}
	
	public void withdraw(int val)
	{
		synchronized(this)
		{
		bal-=val;
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(print());
		}
	}
	
	public String print()
	{
		return "balance is:"+bal;
	}
	
}

class AccountServ extends Thread
{
	AccountThread a;
	int val;
	
	
	public AccountServ(AccountThread a, int val) {
		super();
		this.a = a;
		this.val = val;
		Thread t1=new Thread(this);
		t1.start();
	}
	
	public void run()
	{
		a.withdraw(val);
	}
	
}

class entry3
{
	public static void main(String args[])
	{
		AccountThread t=new AccountThread(1000);
		AccountServ a=new AccountServ(t,100);
		AccountServ a2=new AccountServ(t,600);
		
	}
}