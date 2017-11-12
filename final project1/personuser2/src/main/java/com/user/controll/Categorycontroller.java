package com.user.controll;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.CategoryDAO;
import com.user.entity.Category;
import com.user.entity.User;
@Controller
public class Categorycontroller {
	@Autowired
	CategoryDAO categorydao;	
@RequestMapping(value="category")
	
public ModelAndView getCategoryPage(@ModelAttribute("category")Category category)
	
{
		
		
ModelAndView mv = new ModelAndView("CategoryPage","catlist",this.categorydao.getCategoryList());
		
return mv;
	
}
	
@RequestMapping(value="saveCategory",method=RequestMethod.POST)

	public String addCategory(Category category, Model model)

	{   
	    
	categorydao.addCategory(category);

	model.addAttribute("catlist",this.categorydao.getCategoryList());
		
	return "CategoryPage";
	
}
@RequestMapping("/catdelete")
public String deletecategorylist(@RequestParam("cid") String id,Model model)
{
	categorydao.deletecategory(id);
	model.addAttribute("category", new Category());
	model.addAttribute("catlist",this.categorydao.getCategoryList());
	return"CategoryPage";
}
@RequestMapping("/catedit")
public String getCategory(@RequestParam("cid")String id,Model model)
{
	Category category=categorydao.getCategory(id);
	model.addAttribute("categorydata", category);
	model.addAttribute("category1",new Category());
	return"editcategory";
}
@RequestMapping(value="editcategory",method=RequestMethod.POST)
public String updateuser(Category category,Model model)
{
	categorydao.editCategory(category);
	model.addAttribute("catlist",this.categorydao.getCategoryList());
	return "CategoryPage";
}

}
