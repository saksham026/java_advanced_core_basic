package com.provider;

import com.serviceSummary.CarServices;

import com.services.CarLogic;

public class CarProvider {

	public static CarServices getObject() {
		
		return new CarLogic();
	}
}
