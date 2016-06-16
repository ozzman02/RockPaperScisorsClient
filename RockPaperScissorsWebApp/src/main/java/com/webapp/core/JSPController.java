package com.webapp.core;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JSPController {
	
	@RequestMapping("/")
	public String index(ModelAndView modelAndView) {
		return "index";
	}
	
	@RequestMapping("/about")
	public String about(ModelAndView modelAndView) {
		return "about";
	}
	
	@RequestMapping("/singlematch")
	public String singlematch(ModelAndView modelAndView) {
		return "singlematch";
	}
	
	@RequestMapping(value="/processSingleMatch", method = RequestMethod.POST)
	public String processSingleMatch(ModelAndView modelAndView,	
			@RequestParam(value = "player1name") String player1Name,
			@RequestParam(value = "player2name") String player2Name,
			@RequestParam(value = "player1strategy") String player1strategy,
			@RequestParam(value = "player2strategy") String player2strategy) {
		
		if (player1Name == null || player1Name == "") {
			System.out.println("Please enter player's name");
		} else if (player2Name == null || player2Name == "") {
			System.out.println("Please enter player's name");
		} else if ((player1Name != "" && player2Name != "") && (player1Name == player2Name)) {
			System.out.println("Player names can't be the same");
		} else {
			System.out.println(player1Name);
			System.out.println(player1strategy);
			System.out.println(player2Name);
			System.out.println(player2strategy);
		}

		return "singlematch";
	}
	
}
