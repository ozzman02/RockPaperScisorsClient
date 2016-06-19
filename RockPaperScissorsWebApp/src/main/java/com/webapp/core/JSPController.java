package com.webapp.core;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JSPController {
	
	@RequestMapping("/welcome")
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
	
	@RequestMapping("/tournament")
	public String tournament(ModelAndView modelAndView) {
		return "tournament";
	}
	
	@RequestMapping("/displayResults")
	public ModelAndView displayResults(ModelAndView modelAndView) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<List<Score>> scoresResponse = 
			restTemplate.exchange("http://52.41.23.217:8080//rockpaperscissors/getScores", 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Score>>() {
			});
		
		if (scoresResponse.getStatusCode().equals(HttpStatus.OK)) {			
			List<Score> results = scoresResponse.getBody();
			return new ModelAndView("results", "scorelist", results);
		} else {
			return new ModelAndView("error", "message", "Not valid");
		}
	}
	
	
	@RequestMapping(value="/processSingleMatch", method = RequestMethod.POST)
	public ModelAndView processSingleMatch(ModelAndView modelAndView,	
			@RequestParam(value = "player1name") String playerName1,
			@RequestParam(value = "player2name") String playerName2,
			@RequestParam(value = "player1strategy") String strategy1,
			@RequestParam(value = "player2strategy") String strategy2) {
		
		List<Game> games = new ArrayList<Game>();
		
		String player1Strategy = strategy1.substring(0, 1);
		String player2Strategy = strategy2.substring(0, 1);
		
		Game g1 = new Game(playerName1, player1Strategy);
		Game g2 = new Game(playerName2, player2Strategy);
		
		games.add(g1);
		games.add(g2);
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<Game> game = restTemplate.postForEntity
			("http://52.41.23.217:8080/rockpaperscissors/singlematch", games, Game.class);
		
		if (game.getStatusCode().equals(HttpStatus.OK)) {
			String winner = game.getBody().getPlayerName();			
			return new ModelAndView("singleMatchWinner", "winner", winner);
		} else {
			return new ModelAndView("error", "message", "There are duplicate player names");
		}
		
	}
	
	@RequestMapping(value="/processTournament", method = RequestMethod.POST)
	public ModelAndView processTournament(ModelAndView modelAndView,	
		@RequestParam(value = "player1name") String playerName1, 
		@RequestParam(value = "player2name") String playerName2,
		@RequestParam(value = "player3name") String playerName3, 
		@RequestParam(value = "player4name") String playerName4,
		@RequestParam(value = "player5name") String playerName5,
		@RequestParam(value = "player6name") String playerName6,
		@RequestParam(value = "player7name") String playerName7, 
		@RequestParam(value = "player8name") String playerName8,
		@RequestParam(value = "player1strategy") String strategy1, 
		@RequestParam(value = "player2strategy") String strategy2,
		@RequestParam(value = "player3strategy") String strategy3, 
		@RequestParam(value = "player4strategy") String strategy4,
		@RequestParam(value = "player5strategy") String strategy5, 
		@RequestParam(value = "player3strategy") String strategy6,
		@RequestParam(value = "player3strategy") String strategy7, 
		@RequestParam(value = "player3strategy") String strategy8) {
				
		ArrayList<Game> games = new ArrayList<Game>();
		
		String player1Strategy = strategy1.substring(0, 1);
		String player2Strategy = strategy2.substring(0, 1);
		String player3Strategy = strategy3.substring(0, 1);
		String player4Strategy = strategy4.substring(0, 1);
		String player5Strategy = strategy5.substring(0, 1);
		String player6Strategy = strategy6.substring(0, 1);
		String player7Strategy = strategy7.substring(0, 1);
		String player8Strategy = strategy8.substring(0, 1);
		
		Game g1 = new Game(playerName1, player1Strategy);
		Game g2 = new Game(playerName2, player2Strategy);
		Game g3 = new Game(playerName3, player3Strategy);
		Game g4 = new Game(playerName4, player4Strategy);
		Game g5 = new Game(playerName5, player5Strategy);
		Game g6 = new Game(playerName6, player6Strategy);
		Game g7 = new Game(playerName7, player7Strategy);
		Game g8 = new Game(playerName8, player8Strategy);
		
		games.add(g1);
		games.add(g2);
		games.add(g3);
		games.add(g4);
		games.add(g5);
		games.add(g6);
		games.add(g7);
		games.add(g8);
		
		Tournament tournament = new Tournament(games);
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<Game> game = restTemplate.postForEntity
			("http://52.41.23.217:8080/rockpaperscissors/championship/result", tournament, Game.class);
		
		if (game.getStatusCode().equals(HttpStatus.OK)) {
			String champion = game.getBody().getPlayerName();			
			return new ModelAndView("tournamentChampion", "champion", champion);
		} else {
			return new ModelAndView("error", "message", "Not valid");
		}
		
	}
	
//	@RequestMapping(value="/winners", method = RequestMethod.GET)
//	public ModelAndView displayData(ModelAndView modelAndView) {
//		
//		RestTemplate restTemplate = new RestTemplate();
//		
//		ResponseEntity<List<Score>> scoresResponse = 
//			restTemplate.exchange("http://52.41.23.217:8080//rockpaperscissors/getScores", 
//				HttpMethod.GET, null, new ParameterizedTypeReference<List<Score>>() {
//			});
//		
//		if (scoresResponse.getStatusCode().equals(HttpStatus.OK)) {			
//			List<Score> results = scoresResponse.getBody();
//			return new ModelAndView("results", "scorelist", results);
//		} else {
//			return new ModelAndView("error", "message", "Not valid");
//		}
//		
//	}
			
}
