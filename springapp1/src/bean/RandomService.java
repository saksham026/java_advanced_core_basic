package bean;

import java.util.Random;

import org.springframework.stereotype.Component;

import dao.FortuneService;

@Component
public class RandomService implements FortuneService {


	private String[] data= {"abc","def"};
	@Override
	public String getFortune() {
		// TODO Auto-generated method stub
		Random rand=new Random();
		int index=rand.nextInt(data.length);
		String theFortune=data[index];
		
		return theFortune;
	}

}
