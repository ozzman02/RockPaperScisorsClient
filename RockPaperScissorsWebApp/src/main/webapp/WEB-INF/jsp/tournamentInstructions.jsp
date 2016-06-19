<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
   		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">    
    	<title>Instructions</title>
    	<!-- Bootstrap core CSS -->
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    	<!-- Custom styles for this template -->
    	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  	</head>
	<body>
   		<nav class="navbar navbar-default navbar-fixed-top">
      		<div class="container">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            			<span class="sr-only">Toggle navigation</span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
          			</button>
          			<a class="navbar-brand em-text" href="#">Rock, Paper, Scissors Game</a>
        		</div>
        		<div id="navbar" class="collapse navbar-collapse">
          			<ul class="nav navbar-nav">
            			<li><a href="${pageContext.request.contextPath}/welcome">Home</a></li>
            			<li><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            			<li class="active"><a href="${pageContext.request.contextPath}/tournament">Tournament Mode</a></li>
            			<li><a href="${pageContext.request.contextPath}/displayResults">Tournament Results</a></li>
            			<li><a href="${pageContext.request.contextPath}/about">About</a></li>
          			</ul>
        		</div>
      		</div>
    	</nav>
    	<section id="title-bar">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12">
            			<h1>Instructions</h1>
          			</div>
        		</div>
      		</div>
    	</section>
    	<section id="about">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-8">
          				<h2>The Rules</h2>
            			<p>This is a series of single matches between 8 players. Same rules of a Single Match are applied.</p>
            			<ul>
            				<li>Number of participants must be 8.</li>
            				<li>Type the player names. Names are required.</li>
            				<li>Select player strategies. Default is Rock for each match.</li>
            				<li>If a rock and scissors are formed, the rock wins, because a rock can smash scissors.</li>
            				<li>If scissors and paper are formed, the scissors win, because scissors can cut paper.</li>
            				<li>If paper and a rock are formed, the paper wins, because a sheet of paper can cover a rock.</li>
            				<li>If the same item is formed, player 1 wins.</li>
            			</ul>
            			<p>The champion will be selected after the following matches:</p>
            			<ul>
            				<li>Round 1: Match 1 - Player 1 vs Player 2</li>
            				<li>Round 1: Match 2 - Player 3 vs Player 4</li>
            				<li>Round 1: Match 3 - Player 5 vs Player 6</li>
            				<li>Round 1: Match 4 - Player 7 vs Player 8</li>
            				<li>Round 2: Match 5 - Winner of Match 1 vs Winner of Match 2</li>
            				<li>Round 2: Match 6 - Winner of Match 3 vs Winner of Match 4</li>
            				<li>Round 3: Match 7 - Winner of Match 5 vs Winner of Match 6</li>
            			</ul>
            			<p>Press the "Compute Tournament" button to view the champion.</p>
          			</div>
          			<div class="col-md-4">
            			<img src="${pageContext.request.contextPath}/resources/img/user-guide-icon-large.png" class="demo1">
            			<h2 class="about-image-developer">Tournament Mode</h2>
            			<!-- <p class="about-image-title"><i>Java Software Developer</i></p> -->
          			</div> 
        		</div>
      		</div>
    	</section>
    	<footer>
      		<div class="container">
        		<div class="row">
          			<div class="col-md-6 col-xs-12">
            			<ul>
            				<li><a href="${pageContext.request.contextPath}/welcome">Home</a></li>
            				<li><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            				<li><a href="${pageContext.request.contextPath}/tournament">Tournament Mode</a></li>
            				<li><a href="${pageContext.request.contextPath}/displayResults">Tournament Results</a></li>
            				<li><a href="${pageContext.request.contextPath}/about">About</a></li>
            			</ul>
          			</div>
          			<div class="col-md-6 col-xs-12">
            			<p>Copyright &copy; 2016, All Rights Reserved</p>
          			</div>
        		</div>
      		</div>
    	</footer>
    	<!-- Bootstrap core JavaScript
    	================================================== -->
    	<!-- Placed at the end of the document so the pages load faster -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	</body>
</html>