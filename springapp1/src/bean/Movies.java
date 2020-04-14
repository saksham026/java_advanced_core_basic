package bean;

import java.util.*;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration			//for automatically configuring without xml making java as xml
//@Component
//@ComponentScan("bean")
public class Movies {

	public Set name;
	
	//@Bean
	public Set getMovieName()
	{
		name=new HashSet();
		name.add("s");
		name.add("a");
		return name;
		
	}

}
