package bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.CategoryDAO;
import dao.ProductDAO;

@Component
public class Category implements CategoryDAO {

	//@Autowired
	//field
	ProductDAO pdao;
	
	
	//by constructor
	/*@Autowired
	public Category(ProductDAO pdao) {
		// TODO Auto-generated constructor stub
		this.pdao=pdao;
	}
*/
	
@Autowired			//construction,function 
	public void setPdao(ProductDAO pdao) {		//this gets called automatically by wiring
									//	constructor can be private and getter setter is always public
		this.pdao = pdao;
	}


	@Override
	public void add() {
		// TODO Auto-generated method stub
		System.out.println("category is added");
		pdao.addProduct();
	}

}

//if multiple class are implementing single interface then it will give compile time error due to ambiguity
//for this we can use annotation @qualifier (below @autowired) in class to be called