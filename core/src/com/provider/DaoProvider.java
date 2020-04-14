package com.provider;

import com.dao.daoInterface;
import com.dao.impl.userDatabase;

public class DaoProvider {
	
public static daoInterface getDbObject() {
		
		return new userDatabase();
	}

}
