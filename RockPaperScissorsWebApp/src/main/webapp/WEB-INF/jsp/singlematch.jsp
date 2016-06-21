<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Single Match</title>
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
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
						<h1>Single Match</h1>
					</div>
				</div>
			</div>
		</section>
		<section id="singlematch">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<form name="single-match-form" action="${pageContext.request.contextPath}/processSingleMatch" method="post">
							<div class="form-group">
								<label>Enter Player's 1 Name</label> <input type="text" class="form-control" name="player1name" required>
							</div>
							<div class="form-group">
								<label>Select Player's 1 Strategy</label> 
								<select class="form-control" name="player1strategy">
									<option>R - Rock</option>
									<option>P - Paper</option>
									<option>S - Scissor</option>
								</select>
							</div>
							<div class="form-group">
								<label>Enter Player's 2 Name</label> <input type="text" class="form-control" name="player2name" required>
							</div>
							<div class="form-group">
								<label>Enter Player's 2 Strategy</label> 
								<select class="form-control" name="player2strategy">
									<option>R - Rock</option>
									<option>P - Paper</option>
									<option>S - Scissor</option>
								</select>
							</div>
							<button type="submit" class="btn btn-default">Play Match</button>
						</form>
					</div>
					<div class="col-md-4">
						<img src="${pageContext.request.contextPath}/resources/img/shutterstock_284660570.jpg" class="demo2">
						<h2 class="singlematch-image-title">Rock, Paper, Scissors !!!</h2>
						<p class="singlematch-image-text">Two players match so try your best and beat your enemy, lets see who's best ...</p>
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