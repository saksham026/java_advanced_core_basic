package first;

public class Date {
	
	private int dd,mm,yy;
	
	public Date(int dd,int mm, int yy)
	{
		this.dd=dd;
		this.mm=mm;
		this.yy=yy;
		
	}

	//getter for date
	public int getDd() {
		return dd;
	}

	//setter for date
	public void setDd(int dd) {
		this.dd = dd;
	}
	
	//getter for month
	public int getMm() {
		return mm;
	}
	
	//setter for month
	public void setMm(int mm) {
		this.mm = mm;
	}
	
	//getter for year
	public int getYy() {
		return yy;
	}
	
	//setter for year
	public void setYy(int yy) {
		this.yy = yy;
	}

	//prints whether date is valid or not
	void message(String msg)
	{
		System.out.println(msg);
	}
	
	//checks for leapYear
	boolean leapyear()
	{
		if(yy%4==0)
		{
			return true;
		}
		return false;
	}
	
	boolean validateDate()
	{
		//checking limits for month and date
		if(mm>12||mm<0||dd>31)
		{
			message("invaild date");
			return false;	
		}
		//checking upper bound for date with month
		else if(dd==31)
		{
			if(mm==1||mm==3||mm==5||mm==7||mm==8||mm==10||mm==12)
			{
				message("vaild date");
				return true;
			}
			else
			{
				message("invaild date");
				return false;
			}
		}
		//checking for February
		else if(mm==2)
		{
			if(dd>28)
			{
			message("invaild date");
			return false;
			}
			//checking leap year condition
			else if(leapyear()&&dd==28)
			{
				message("vaild date");
				return true;
				
			}
			else
			{
				message("invaild date");
				return false;
			}
			
		}
		
		message("vaild date");
		return true;
		
	}
	
	public String toString()
	{
		return ""+dd+"/"+mm+"/"+yy;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Date d=new Date(26,9,1998);
		d.setDd(28);
		d.setMm(2);
		d.setYy(1998);
		d.validateDate();
	}

}
