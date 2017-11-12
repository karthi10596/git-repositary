package com.user.controll;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Admincontroller {
	@RequestMapping(value="admin")
	public String admin()
	{
		return "Adminpage";
	}
}
