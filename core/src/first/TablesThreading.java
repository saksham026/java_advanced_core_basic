package first;

public class TablesThreading extends Thread{

	Thread t1,t2;
	
	TablesThreading()
	{
		t1=new Thread(this);
		t2=new Thread(this);
		
		t1.start();
		t2.start();
		
	}
	
	public void run()
	{
		if(Thread.currentThread()==t1)
		{
			for(int i=1;i<=10;i++)
			{
				int a=55*i;
				System.out.println("55*"+i+"="+a);
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		if(Thread.currentThread()==t2)
		{
			for(int i=1;i<=10;i++)
			{
				int a=65*i;
				System.out.println("65*"+i+"="+a);
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
}

class entry2
{
	public static void main(String args[])
	{
		TablesThreading t=new TablesThreading();
		
	}
}

