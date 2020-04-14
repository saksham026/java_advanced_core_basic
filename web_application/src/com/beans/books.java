package com.beans;

public class books {

	private String bookName;
	private int price;
	private int quantity;
	public books(String bookName, int price, int quantity) {
		super();
		this.bookName = bookName;
		this.price = price;
		this.quantity = quantity;
	}
	
	public books()
	{
		
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "books [bookName=" + bookName + ", price=" + price + ", quantity=" + quantity + "]";
	}
	
	
}
