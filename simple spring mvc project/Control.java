package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Control {
	@RequestMapping("/abc")
	public ModelAndView helloworld()
	{
		String msg="hello all of you";
		return new ModelAndView("Hello","msg",msg);
	}

}
