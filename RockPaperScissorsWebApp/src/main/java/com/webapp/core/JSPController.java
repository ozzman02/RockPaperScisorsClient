package com.webapp.core;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

/**
 * The Class JSPController.
 */
@Controller
public class JSPController {
	
	/**
	 * Mainpage.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/")
	public String mainpage(ModelAndView modelAndView) {
		return "index";
	}
	
	/**
	 * Index.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/welcome")
	public String index(ModelAndView modelAndView) {
		return "index";
	}
	
	/**
	 * About.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/about")
	public String about(ModelAndView modelAndView) {
		return "about";
	}
	
	/**
	 * Singlematch.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/singlematch")
	public String singlematch(ModelAndView modelAndView) {
		return "singlematch";
	}
	
	/**
	 * Tournament.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/tournament")
	public String tournament(ModelAndView modelAndView) {
		return "tournament";
	}
	
	/**
	 * Filter data.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/filterdata")
	public String filterData(ModelAndView modelAndView) {
		return "filterdata";
	}
	
	/**
	 * Single match instructions.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/singleMatchInstructions")
	public String singleMatchInstructions(ModelAndView modelAndView) {
		return "singleMatchInstructions";
	}
	
	/**
	 * Tournament instructions.
	 *
	 * @param modelAndView the model and view
	 * @return the string
	 */
	@RequestMapping("/tournamentInstructions")
	public String tournamentInstructions(ModelAndView modelAndView) {
		return "tournamentInstructions";
	}
	
	/**
	 * Display results.
	 *
	 * @param modelAndView the model and view
	 * @return the model and view
	 */
	@RequestMapping("/displayResults")
	public ModelAndView displayResults(ModelAndView modelAndView) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<List<Score>> scoresResponse = 
			restTemplate.exchange("http://localhost:8080//rockpaperscissors/getScores", 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Score>>() {
			});
		
		if (scoresResponse.getStatusCode().equals(HttpStatus.OK)) {			
			List<Score> results = scoresResponse.getBody();
			return new ModelAndView("results", "scorelist", results);
		} else {
			return new ModelAndView("error", "message", "Not valid");
		}
	}
	
	
	/**
	 * Process single match.
	 *
	 * @param modelAndView the model and view
	 * @param playerName1 the player name 1
	 * @param playerName2 the player name 2
	 * @param strategy1 the strategy 1
	 * @param strategy2 the strategy 2
	 * @return the model and view
	 */
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
			("http://localhost:8080/rockpaperscissors/singlematch", games, Game.class);
		
		if (game.getStatusCode().equals(HttpStatus.OK)) {
			String winner = game.getBody().getPlayerName();			
			return new ModelAndView("singleMatchWinner", "winner", winner);
		} else {
			return new ModelAndView("error", "message", "There are duplicate player names");
		}
		
	}
	
	/**
	 * Process tournament.
	 *
	 * @param modelAndView the model and view
	 * @param playerName1 the player name 1
	 * @param playerName2 the player name 2
	 * @param playerName3 the player name 3
	 * @param playerName4 the player name 4
	 * @param playerName5 the player name 5
	 * @param playerName6 the player name 6
	 * @param playerName7 the player name 7
	 * @param playerName8 the player name 8
	 * @param strategy1 the strategy 1
	 * @param strategy2 the strategy 2
	 * @param strategy3 the strategy 3
	 * @param strategy4 the strategy 4
	 * @param strategy5 the strategy 5
	 * @param strategy6 the strategy 6
	 * @param strategy7 the strategy 7
	 * @param strategy8 the strategy 8
	 * @return the model and view
	 */
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
			("http://localhost:8080/rockpaperscissors/championship/result", tournament, Game.class);
		
		if (game.getStatusCode().equals(HttpStatus.OK)) {
			String champion = game.getBody().getPlayerName();			
			return new ModelAndView("tournamentChampion", "champion", champion);
		} else {
			return new ModelAndView("error", "message", "Not valid");
		}
		
	}
	
	/**
	 * Display data.
	 *
	 * @param modelAndView the model and view
	 * @param count the count
	 * @return the model and view
	 */
	@RequestMapping(value="/filterResults", method = RequestMethod.GET)
	public ModelAndView displayData(ModelAndView modelAndView, 
		@PathVariable(value = "count") int count) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<List<Score>> scoresResponse = 
			restTemplate.exchange("http://localhost:8080/rockpaperscissors/championship/top", 
				HttpMethod.GET, null, new ParameterizedTypeReference<List<Score>>() {
			});
		
		if (scoresResponse.getStatusCode().equals(HttpStatus.OK)) {			
			List<Score> results = scoresResponse.getBody();
			return new ModelAndView("filterdata", "scorelist", results);
		} else {
			return new ModelAndView("error", "message", "Not valid");
		}
		
	}
			
}
