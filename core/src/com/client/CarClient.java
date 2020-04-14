package com.client;

import com.Exceptions.carLimitReachedException;
import com.Exceptions.carUnavailableException;
import com.Exceptions.invalidCarException;
import com.Exceptions.invalidCredentialException;
import com.beans.Client;
import com.provider.CarProvider;
import com.serviceSummary.CarServices;

public class CarClient {

	public static void main(String args[])
	{
		CarServices cs=CarProvider.getObject();
	
		//buying and selling cars
		Client c=new Client("saksham");
		try
		{
		cs.saleCar("XUV",100,1,new Client("saksham"));
		cs.saleCar("MUV",100,1,c);
		cs.buyCar("XUV", 150, 1, new Client("saksham"));
		int searchRes[]=cs.searchCar("MUV");
		
		//renting and booking cars
		cs.regCar("XUV",102,1,new Client("saksham"),4,245);
		cs.regCar("MUV",100,1,new Client("saksham"),5,123);
		int id=cs.bookCar("MUV", new Client("saksham"), 5, 100);
		
		cs.cancelCar(1,c);
		cs.searchCar("MUV");
		}
		catch(carUnavailableException e)
		{
			e.printStackTrace();
		}
		catch(carLimitReachedException e)
		{
			e.printStackTrace();
		}
		catch(invalidCarException e)
		{
			e.printStackTrace();
		}
		catch(invalidCredentialException e)
		{
			e.printStackTrace();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		
	}
}
