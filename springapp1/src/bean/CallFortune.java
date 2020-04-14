package bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import dao.Coach;
import dao.FortuneService;

@Component
public class CallFortune implements Coach {

	@Autowired
	@Qualifier("randomService") 		//gives object of target calling class
	FortuneService fos;
	
	@Override
	public void getWorkOut() {
		// TODO Auto-generated method stub
		System.out.println(fos.getFortune());
	}

}
