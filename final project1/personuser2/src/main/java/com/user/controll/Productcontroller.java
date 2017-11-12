package com.user.controll;

import java.io.File;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.user.DAO.CategoryDAO;
import com.user.DAO.ProductDAO;
import com.user.DAO.SupplierDAO;
import com.user.entity.Category;
import com.user.entity.Product;
import com.user.entity.Supplier;
import com.user.entity.User;
@Controller
public class Productcontroller {
	@Autowired
	ProductDAO productdao;
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	SupplierDAO supplierdao;
	@RequestMapping(value="product")
	public String getProductpage(@ModelAttribute("product") Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
		List<Supplier> suplist=supplierdao.getSupplierList();
		System.out.println("supplier list in controller------------------>"+suplist);	
		model.addAttribute("suplist",suplist);
		return"ProductPage";

	}
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public String addProductpage(@Valid @ModelAttribute("product")Product product,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			return "ProductPage";
		}
		productdao.addproduct(product);
		model.addAttribute("product",new Product());
		model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		MultipartFile image=product.getPimage();
		Path path=Paths.get("C:\\eclipse work space\\personuser2\\src\\main\\webapp\\resources\\"+product.getId()+".jpg");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return"ProductPage";		
	}
	@RequestMapping("/deletepro")
	public String deleteProduct(@RequestParam("pid")int id,Model model)
	{
		productdao.deleteproduct(id);
		model.addAttribute("product",new Product());
	    model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
	    model.addAttribute("suplist", this.supplierdao.getSupplierList());
		return "ProductPage";
		}
	@RequestMapping(value = "/Userproduct")
	public String displayProduct(Model m)
	{
		List<Product> prolist = productdao.getProductList();
		m.addAttribute("prolist", prolist);
		List<Category> catlist=categorydao.getCategoryList();
		m.addAttribute("catlist", catlist);
		
		return "userproduct";
	} 
	@RequestMapping(value = "/productdesc/{id}")
	public String showProductDesc(@PathVariable("id") int id,Model m)
	{
		Product product=productdao.getProduct(id);
		m.addAttribute("product" ,product);
		return "product description";
	}
	@RequestMapping("/product/searchbycategory")
	public String selectByCategory(@RequestParam String searchCondition,Model model){
		model.addAttribute("product",productdao.getProductList());
		if(searchCondition.equals("All"))
			model.addAttribute("searchCondition","");
		else
		model.addAttribute("searchcondition",searchCondition);
		return "userproduct";
	}
}
