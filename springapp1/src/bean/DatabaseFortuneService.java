package bean;

import org.springframework.stereotype.Component;

import dao.FortuneService;

@Component
public class DatabaseFortuneService implements FortuneService {

	public DatabaseFortuneService() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getFortune() {
		// TODO Auto-generated method stub
		return "database connected";
	}

}
