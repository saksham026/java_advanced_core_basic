package bean;

import dao.HotDrink;

public class Tea implements HotDrink{

	@Override
	public void hotDrink() {
		// TODO Auto-generated method stub
		System.out.println("tea is prepared");
	}

	public void doMyStuff() {
		System.out.println("bin is initialised");
	}
public void doMyCleanStuff() {
		System.out.println("bin is destroyed");
	}
}
