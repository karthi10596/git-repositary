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

import com.user.DAO.UserDAO;
import com.user.entity.User;

@Controller
public class usercontroller {
	@Autowired
	UserDAO userdao;

	@RequestMapping(value="register", method=RequestMethod.GET)
	public ModelAndView sendregister(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView("RegisterPage");
		return mv;
	}
	@RequestMapping(value="register", method=RequestMethod.POST)
	public ModelAndView getUser(User user)
	{
		
		userdao.adduser(user);
		ModelAndView mv=new ModelAndView("loginpage","user",new User());
		return mv;		
		
	}
	@RequestMapping(value="fetchpage", method=RequestMethod.GET)
	public String getuserlist(Model model)
	{
	   List<User> ul=userdao.getList();
		model.addAttribute("userlist",this.userdao.getList());
		return "fetchpage";
	}
	@RequestMapping("/delete")
	public String deleteuserlist(@RequestParam("uid") String username,Model model)
	{
		userdao.deleteuser(username);
		model.addAttribute("userlist",this.userdao.getList());
		return"fetchpage";
	}
	
	@RequestMapping("/edit")
	public String getUser(@RequestParam("uid")String username,Model model)
	{
		User user=userdao.getUser(username);
		model.addAttribute("userdata", user);
		model.addAttribute("user1",new User());
		return"Editpage";
	}
	@RequestMapping(value="updateuser",method=RequestMethod.POST)
	public String updateUser(User user,Model model)
	{
		userdao.editUser(user);
		model.addAttribute("userlist",this.userdao.getList());
		return "fetchpage";
	}

}
