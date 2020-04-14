package annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)				//meta annotation to describe custom annotation TestAnnotation 

@interface TestAnnotation {

	String name();//fields of the annotation to provide information about method and version detailing
	int no();
}
//syntax of annotation
