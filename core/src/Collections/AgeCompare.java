package Collections;

import java.util.Comparator;

public class AgeCompare implements Comparator<cac2>{
	
	public int compare(cac2 obj,cac2 obj1)	//it is like bean object
	{
		
		if(obj1.age==obj.age)
			return 0;
		else if(obj1.age>obj.age)
		    return 1;
		else
			return -1;
	}
		

}
