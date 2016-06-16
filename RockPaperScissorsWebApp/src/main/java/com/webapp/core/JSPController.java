package com.webapp.core;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JSPController {
	
	@RequestMapping("/")
	public String index(ModelAndView modelAndView) {
		return "index";
	}
	
}
