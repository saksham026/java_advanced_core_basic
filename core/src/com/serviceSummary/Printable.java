package com.serviceSummary;

import com.Exceptions.invalidCarException;

public interface Printable {
	
	void print(int carId) throws invalidCarException;

}
