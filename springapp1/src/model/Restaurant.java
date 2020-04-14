package model;

import dao.HotDrink;

public class Restaurant {

	HotDrink hd;
	public void setHd(HotDrink hd)
	{
		this.hd=hd;
	}
	
	public void order()
	{
		hd.hotDrink();
	}
	
}
