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
            			<li class="active"><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            			<li><a href="${pageContext.request.contextPath}/tournament">Tournament Mode</a></li>
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
            			<p>Rock, Paper, Scissors is a game for two players typically played using the players' hands. 
            				The two players each make a fist with one hand and hold the other open, palm upward. 
            				Together, they tap their fists in their open palms once, twice, and on the third time form one of 
            				three items: a rock (by keeping the hand in a fist), a sheet of paper (by holding the hand flat, palm down), 
            				or a pair of scissors (by extending the first two fingers and holding them apart). 
            				The winner of that round depends on the items formed.
            			</p>
            			<br>
            			<ul>
            				<li>Type the players name. Names are required.</li>
            				<li>Select players strategy. Default is Rock.</li>
            				<li>If a rock and scissors are formed, the rock wins, because a rock can smash scissors.</li>
            				<li>If scissors and paper are formed, the scissors win, because scissors can cut paper.</li>
            				<li>If paper and a rock are formed, the paper wins, because a sheet of paper can cover a rock.</li>
            				<li>If the same item is formed, player 1 wins.</li>
            				<li>Press the "Play Match" button to view the winner.</li>
            			</ul>
          			</div>
          			<div class="col-md-4">
            			<img src="${pageContext.request.contextPath}/resources/img/user-guide-icon-large.png" class="demo1">
            			<h2 class="about-image-developer">Single Match</h2>
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
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	</body>
</html>