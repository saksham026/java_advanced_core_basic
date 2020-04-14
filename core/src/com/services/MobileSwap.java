package com.services;

import com.beans.Mobile;

public class MobileSwap {
	
	
	//for swapping objects
	public void swapping(Mobile a[])
	{	
		Mobile temp=a[0];
		a[0]=a[1];
		a[1]=temp;
		
	}
	
	public static void main(String args[])
	{
		Mobile t[]=new Mobile[2];
		MobileSwap ms=new MobileSwap();
		Mobile m1=new Mobile(1,"s",12);
		Mobile m2=new Mobile(2,"a",123);
		System.out.println("before swapping m1:"+m1+" m2:"+m2);
		
		t[0]=m1;
		t[1]=m2;
		
		ms.swapping(t);
		m1=t[0];
		m2=t[1];
		
		System.out.println("after swapping m1:"+m1+" m2:"+m2);
	}
	
}
