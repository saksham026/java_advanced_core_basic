package controller;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Customer;

@Controller
public class CustomerController 
{

	
	@RequestMapping("/processCustomer")
	public String processCustomer(Model model)
	{
		model.addAttribute("customer",new Customer());
		return "cutsomer";
	}
	
	@InitBinder													//it is pre-processor which is executed before everything
	public void initBinder(WebDataBinder dataBinder)
	{
		StringTrimmerEditor se=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, se);
		
	}
	
	@RequestMapping("customerData")
	public String customerData(@Valid @ModelAttribute("customer") Customer customer,BindingResult binding)
	{
		if(binding.hasErrors())
		{
			return "cutsomer";
		}
		else
		{
		return "displayCustomer";
		}
	}
}
