<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            			<h1>Tournament Champion</h1>
          			</div>
        		</div>
      		</div>
    	</section>
    	<section id="singlematch">
      		<div class="container">
        		<div class="row">
        			<div class="col-xs-6 col-md-4"></div>
  					<div class="col-xs-6 col-md-4">
  						<img src="${pageContext.request.contextPath}/resources/img/RPSCrest2007.gif" class="demo2">
            			<h2 class="singlematch-image-title"><c:out value="${champion}"></c:out>, congratulations 
            				the championship is yours !!!</h2>
  					</div>
  					<div class="col-xs-6 col-md-4"></div>
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