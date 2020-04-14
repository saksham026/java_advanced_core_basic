package com.services;

import com.beans.User;

public interface UserInterface {

	public int signUp(User u);
	public User signIn(String userName);

}

