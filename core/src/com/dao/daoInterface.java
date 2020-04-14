package com.dao;

import com.beans.User;

public interface daoInterface{

	public int register(User u);
	public User check(String username);
	public int update(User u);
}
