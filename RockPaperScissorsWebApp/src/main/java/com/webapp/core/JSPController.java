package com.webapp.core;

import java.util.ArrayList;
import java.util.List;

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
			@RequestParam(value = "player1name") String playerName1,
			@RequestParam(value = "player2name") String playerName2,
			@RequestParam(value = "player1strategy") String strategy1,
			@RequestParam(value = "player2strategy") String strategy2) {
		
		List<Game> games = new ArrayList<Game>();
		String player1Strategy = strategy1.substring(0, 1);
		String player2Strategy = strategy2.substring(0, 1);
		Player p1 = new Player(playerName1);
		Player p2 = new Player(playerName2);
		Game g1 = new Game(p1, player1Strategy);
		Game g2 = new Game(p2, player2Strategy);
		games.add(g1);
		games.add(g2);
		
		return "singlematch";
	}
	
}
