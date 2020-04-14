package bean;

import org.springframework.stereotype.Component;

import dao.FortuneService;

@Component
public class RESTFortuneService implements FortuneService {

	public RESTFortuneService() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getFortune() {
		// TODO Auto-generated method stub
		return "Rest SERVICES is called";
	}

}
