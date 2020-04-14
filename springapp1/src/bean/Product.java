package bean;

import org.springframework.stereotype.Component;

import dao.ProductDAO;

@Component
public class Product implements ProductDAO {

	public Product() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addProduct() {
		// TODO Auto-generated method stub
		System.out.println("product is added");
	}

}
