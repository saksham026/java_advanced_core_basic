package Collections;

import java.util.Comparator;

public class NameCompare implements Comparator<cac2>{
	
	public int compare(cac2 obj,cac2 obj1)	//it is like bean object
	{
		
		if(obj1.name==obj.name)
			return 0;
		else if(obj.name.compareTo(obj1.name)>0)
		    return 1;
		else
			return -1;
	}
		

}
