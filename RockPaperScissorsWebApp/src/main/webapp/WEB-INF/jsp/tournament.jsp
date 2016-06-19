<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">    
    	<title>Tournament</title>
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
            		<li><a href="#">Tournament Results</a></li>
            		<li><a href="${pageContext.request.contextPath}/about">About</a></li>
          		</ul>
        		</div>
      		</div>
    	</nav>
    	<section id="title-bar">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-12">
            			<h1>Tournament</h1>
          			</div>
        		</div>
      		</div>
    	</section>
    	<section id="singlematch">
      		<div class="container">
        		<div class="row">
          			<div class="col-md-8">
            			<form class="form-inline" name="tournament-form" action="${pageContext.request.contextPath}/processTournament" method="post">
              				<div class="form-group">
                				<label>Player 1</label>
                				<input type="text" class="form-control" name="player1name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player1strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 2</label>
                				<input type="text" class="form-control" name="player2name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player2strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 3</label>
                				<input type="text" class="form-control" name="player3name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player3strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 4</label>
                				<input type="text" class="form-control" name="player4name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player4strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 5</label>
                				<input type="text" class="form-control" name="player5name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player5strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 6</label>
                				<input type="text" class="form-control" name="player6name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player6strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 7</label>
                				<input type="text" class="form-control" name="player7name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player7strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
              				<div class="form-group">
                				<label>Player 8</label>
                				<input type="text" class="form-control" name="player8name" required>
              				</div>
              				<div class="form-group">
                				<label>Strategy</label>
                				<select class="form-control" name="player8strategy">
  									<option>R - Rock</option>
  									<option>P - Paper</option>
  									<option>S - Scissor</option>
 								</select>
              				</div><br><br><br>
            				<button type="submit" class="btn btn-default">Submit</button><br>
            			</form>
          			</div>
          			<div class="col-md-4">
            			<img src="${pageContext.request.contextPath}/resources/img/rock-paper-scisors1.jpg" class="demo2">
            			<h2 class="singlematch-image-title">Rock, Paper, Scissors !!!</h2>
            			<p class="singlematch-image-text">8 player's tournament, lets see who's the champion ...</p>
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
            				<li class="active"><a href="${pageContext.request.contextPath}/tournament">Tournament Mode</a></li>
            				<li><a href="#">Tournament Results</a></li>
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