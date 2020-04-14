package com.provider;

import com.beans.Car;
import com.beans.Client;
import com.beans.Date;
import com.beans.MUV;
import com.beans.Prime;
import com.beans.XUV;

public class typeProvider {

	public static Car getCategory(String category,float price, String status, Client c,Date d)
	{
		Car ca=null;
		if(category=="XUV")
		{
			ca=new XUV(price,status,c,d);
		}
		else if(category=="MUV")
		{
			ca=new MUV(price,status,c,d);
		}
		else if(category=="Prime")
		{
			ca=new Prime(price,status,c,d);
		}
		
		return ca;
	}
}
