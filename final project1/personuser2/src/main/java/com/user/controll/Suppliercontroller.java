package com.user.controll;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.SupplierDAO;
import com.user.entity.Category;
import com.user.entity.Supplier;
@Controller
public class Suppliercontroller {
	@Autowired
	
	SupplierDAO supplierdao;
		
	@RequestMapping(value="supplier")
		
	public ModelAndView addsupplier(@ModelAttribute("supplier")Supplier supplier)

	{	
	ModelAndView mv = new ModelAndView("SupplierPage","suplist",this.supplierdao.getSupplierList());		
	return mv;		
	}

		
	@RequestMapping(value="SaveSupplier",method=RequestMethod.POST)		
	public String addsupplier(Supplier supplier, Model model)
	{			
	supplierdao.addsupplier(supplier);		
	model.addAttribute("suplist", this.supplierdao.getSupplierList());
	return "SupplierPage";		
	}
	@RequestMapping("/supdelete")
	public String deletesupplierlist(@RequestParam("sid") String id,Model model)
	{
		supplierdao.deletesupplier(id);
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suplist",this.supplierdao.getSupplierList());
		return"SupplierPage";
	}
	@RequestMapping("/supedit")
	public String getSupplier(@RequestParam("sid")String id,Model model)
	{
		Supplier supplier=supplierdao.getSupplier(id);
		model.addAttribute("supplierdata", supplier);
		model.addAttribute("supplier1",new Supplier());
		return"editsupplier";
	}
	@RequestMapping(value="updatesupplier",method=RequestMethod.POST)
	public String updatesupplier(Supplier supplier,Model model)
	{
		supplierdao.editSupplier(supplier);
		model.addAttribute("suplist",this.supplierdao.getSupplierList());
		return "SupplierPage";
	}

}
