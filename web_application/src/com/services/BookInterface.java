package com.services;

import java.awt.print.Book;

import com.beans.books;

public interface BookInterface {

	public int checkAvailability(String BookName);
	public books givedetails(String BookName);
	public void buybooks(books b);
}
