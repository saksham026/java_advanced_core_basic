package first;

abstract class Shape
{
	String shapeName;
	
	Shape(String shapeName)
	{
		this.shapeName=shapeName;
	}
	
	public abstract float calArea();
}

class Circle extends Shape
{
	protected float radius;
	
	public Circle(String shapeName,float radius){
		
		super(shapeName);
		this.radius=radius;
		
	}
	
	public float calArea()
	{
		return (float) (3.14*radius*radius);
	}
	
}

class Square extends Shape
{
	protected float side;
	
	public Square(String shapeName,float side)
	{
		super(shapeName);
		this.side=side;
	}
	
	public float calArea()
	{
		return (side*side);
	}
}

public class inher{

	public static Shape getMethod(String shape)
	{
		Shape s=null;
		if(shape.equals("circle"))
		{
			s=new Circle(shape,3);
		}
		else if(shape.equals("square"))
		{
			s=new Square(shape,3);
		}
		return s; 
	}
	
	public static void main(String args[])
	{
		Shape s;
		s=getMethod("circle");
		System.out.println(s.calArea());
		
		s=getMethod("square");
		System.out.println(s.calArea());
		
	}
}
