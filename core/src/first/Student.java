package first;

public class Student {

	private int rollNo;
	
	private String name;
	private float marks[]=new float[5];
	private Date birthDate;

	
	//Parameterized constructor
	public Student(int rollNo,String name,float[] marks,Date birthDate)
	{
		this.rollNo=rollNo;
		this.name=name;
		this.marks = marks;
		this.birthDate=birthDate;
	}

	
	//getter for rollNo
	public int getRollNo() {
		return rollNo;
	}

	//setter for rollNo
	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	//getter for name
	public String getName() {
		return name;
	}

	//setter for name
	public void setName(String name) {
		this.name = name;
	}

	
	//getter for marks
	public float[] getMarks() {
		return marks;
	}

	//setter for marks
	public void setMarks(float[] marks) {
		this.marks = marks;
	}

	//default toString method
	public String toString()
	{
	
		return "birth of student is: "+birthDate;
		
	}
	
	//calculates total of marks of student
	public float sum()
	{
		float total=0.0f;
		for(int i=0;i<marks.length;i++)
		{
			total+=marks[i];
		}
		return total;
	}
	
	//calculates grade of student
	public String gradeCalculation() {
		
		String grade="F";
		float avMarks;
		float total=sum();
		//get total and average of marks
		avMarks=total/marks.length;
		
		if(avMarks>80.0)
		{
			grade="A";
		}
		else if(avMarks>60.0)
		{
			grade="B";
		}
		else if(avMarks>40.0)
		{
			grade="C";
		}
		
		return grade;
		
	}
	
	public static void main(String args[])
	{
		String grade;
		float marks[]= {99,34,56,76,16};
		Student s=new Student(1,"saksham",marks,new Date(26,9,1998));
		s.setRollNo(1);
		s.setName("saksham");
		s.setMarks(marks);		
		grade=s.gradeCalculation();
		Date d=new Date(19,7,2018);
		
		System.out.println(s+" and name is "+s.getName()+" who has obtained grade as '"+grade+"' on "+d);
	}
}
