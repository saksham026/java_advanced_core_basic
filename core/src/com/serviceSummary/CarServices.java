package com.serviceSummary;

import com.Exceptions.carLimitReachedException;
import com.Exceptions.carUnavailableException;
import com.Exceptions.invalidCarException;
import com.Exceptions.invalidCredentialException;
import com.beans.Client;

public interface CarServices extends Printable{
	
	void buyCar(String category,float budget,int quantity,Client c) throws carUnavailableException,invalidCarException;
	void saleCar(String category,float price,int quantity,Client c) throws carLimitReachedException;
	int[] searchCar(String carType) throws carUnavailableException;
	int bookCar(String category,Client c,int time,int distance) throws carUnavailableException,invalidCarException;
	void regCar(String category,float price,int quantity,Client c,int time,int distance) throws carLimitReachedException; 
	void cancelCar(int carId,Client c) throws invalidCarException,invalidCredentialException;
}
