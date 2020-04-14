package bean;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.util.SystemPropertyUtils;

import dao.Coach;

@Component("thatSillyCoach")
@Scope("prototype")		//default is singleton
public class TennisCoach implements Coach{

	public TennisCoach() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void getWorkOut() {
		// TODO Auto-generated method stub
		System.out.println("workout to kar le kabhi");
	}

	@PostConstruct
	public void init() {
		
		System.out.println("bean is initialsed");
		
	}
	
	@PreDestroy
	public void destroy() {
		
		System.out.println("bean is initialsed");
		
	}
	
}
