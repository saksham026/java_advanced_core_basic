package com.services;

import com.Exceptions.carLimitReachedException;
import com.Exceptions.carUnavailableException;
import com.Exceptions.invalidCarException;
import com.Exceptions.invalidCredentialException;
import com.beans.Car;
import com.beans.Client;
import com.beans.Date;
import com.provider.typeProvider;
import com.serviceSummary.CarServices;

public class CarLogic implements CarServices{

	private static Car ca[]=new Car[10];
	private static int i=0;
	
	public int find_index(int carId)
	{
		for(int j=0;j<i;j++)
		{
		if(ca[j].getCarId()==carId)
		{
			return j;
		}
		}
		return -1;
	}
	
	@Override
	public void print(int carId) throws invalidCarException{
		// TODO Auto-generated method stub
		int index=find_index(carId);
		if(index!=-1)
		System.out.println(ca[index]);
		else
		{
			throw new invalidCarException("car with this car id is not found");
		}
	}

	@Override
	public void buyCar(String category, float budget, int quantity, Client c) throws carUnavailableException, invalidCarException{
		// TODO Auto-generated method stub
		int flag=0;
		for(int j=0;j<i;j++)
		{
			if(quantity!=0)
			{
				if(ca[j].getStatus()=="SELL"&&budget>=ca[j].getPrice())
				{
					flag=1;
				ca[j].setC(c);
				budget=budget-ca[j].getPrice();
				System.out.println("your have buyed car having details:");
				print(ca[j].getCarId());
				ca[j].setStatus("NA");
				quantity--;
				}
			}
		
		}
		if(flag==0)
		{
			throw new carUnavailableException("car with your requirement not available");
		}
		
	}

	@Override
	public void saleCar(String category, float price, int quantity, Client c) throws carLimitReachedException{
		// TODO Auto-generated method stub
		
		if(i+quantity>10)
		{
			throw new carLimitReachedException("cars in required quantity is not available");
		}
		while(quantity>0&&i<10)
		{
		ca[i]=typeProvider.getCategory(category,price,"SELL",c,new Date(12,9,2018));
		i++;
		quantity--;
		}
	}

	@Override
	public int[] searchCar(String carType) throws carUnavailableException{
		// TODO Auto-generated method stub
		int res[]=new int[10];
		int count=0;
		
		System.out.println("searching......");
		
		for(int j=0;j<i;j++)
		{
			
			if(ca[j].getCategory()==carType&&ca[j].getStatus()!="NA")
			{
			res[count]=ca[j].getCarId();
			System.out.println(ca[j]);
			count++;
			}
		}
		
		if(count==0)
		{
			throw new carUnavailableException("no car found");
		}
		return res;
	}

	@Override
	public int bookCar(String category, Client c, int time, int distance) throws carUnavailableException, invalidCarException{
		// TODO Auto-generated method stub
		int flag=0;
		for(int j=0;j<i;j++)
		{
	
				if((ca[j].getStatus()=="RENT")&&(ca[j].getDistance()>=distance)&&(ca[j].getTime()>=time)&&(ca[j].getCategory()==category))
				{
					flag=1;
				ca[j].setC(c);
				System.out.println("your car booked is with details:");
				print(ca[j].getCarId());
				ca[j].setStatus("NA");		
				return ca[j].getCarId();
				
				}
		
		}
		if(flag==0)
		{
			throw new carUnavailableException("no car found");
		}
		return 0;
		
	}

	@Override
	public void regCar(String category, float price, int quantity, Client c, int time, int distance) throws carLimitReachedException{
		// TODO Auto-generated method stub
		
		if(i+quantity>10)
		{
			throw new carLimitReachedException("cars in required quantity is not available");
		}
		
		while(quantity>0&&i<10)
		{
		ca[i]=typeProvider.getCategory(category,price,"RENT",c,new Date(12,9,2018));
		ca[i].setTime(time);
		ca[i].setDistance(distance);
		i++;
		quantity--;
		}
		
	}

	@Override
	public void cancelCar(int carId, Client c) throws invalidCarException,invalidCredentialException{
		// TODO Auto-generated method stub
		int index=find_index(carId);
		if(index==-1)
		{
			throw new invalidCarException("no car with this id");
		}
		else if(ca[index].getC()==c)
		{
			ca[index].setStatus("NA");
			System.out.println("car cancelled");
		}
		else
		{
			throw new invalidCredentialException("you are not authorised to do task");
		}
	}

}
