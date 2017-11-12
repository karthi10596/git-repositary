package com.user.controll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.DAO.ProductDAO;

@Controller
public class Userproductcontroller {
	@Autowired
	ProductDAO productdao;
	
	@RequestMapping(value="contactus")
	public String usercontact()
	{
		return"contactus";
	}
	@RequestMapping("/OrderConfirm")
	public String showorder()
	{
		return "OrderComplete";
	}
	@RequestMapping(value="returns")
	public String returnprolist(Model m)
	{
		m.addAttribute("prolist",productdao.getProductList());

		return "userproduct";
	}

	
	
	
	
	
	}

