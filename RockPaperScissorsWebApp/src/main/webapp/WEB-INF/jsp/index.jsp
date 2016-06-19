<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Welcome</title>
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
            <li class="active"><a href="${pageContext.request.contextPath}/welcome">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            <li><a href="${pageContext.request.contextPath}/tournament">Tournament Mode</a></li>
            <li><a href="${pageContext.request.contextPath}/displayResults">Tournament Results</a></li>
            <li><a href="${pageContext.request.contextPath}/about">About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <div class="jumbotron">
      <div class="container"> 
        <div id="welcome-div" class="row">
          <div class="col-md-6">
            <h1>Rock, Paper, Scissors Game !!!</h1>
            <h2>Welcome to our online gaming platform, play now and enjoy our amazing features</h2>
          </div>
        </div>
      </div>
    </div>
    <section id="middle">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/resources/img/singlematch.jpg" class="demo">
            <h2>Single Match</h2>
            <p>Played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
            <a href="${pageContext.request.contextPath}/singleMatchInstructions" class="btn btn-default">Instructions</a>
          </div>
          <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/resources/img/rockpaperscissors.jpg" class="demo">
            <h2>Tournament Mode</h2>
            <p>Have fun along with other players as you participate in our international online tournament. Play to be the ultimate champion!</p>
            <a href="${pageContext.request.contextPath}/tournamentInstructions" class="btn btn-default">Instructions</a>
          </div>
          <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/resources/img/bigstock_Rock_Paper_And_Scissors_3994136.jpg" class="demo">
            <h2>Download sample files</h2>
            <p>Dowload our free sample files where you can have a guideline to play our single match and tournament mode.</p>
            <a href="${pageContext.request.contextPath}/resources/files/samples.txt" download class="btn btn-default">Download</a>
          </div>
        </div>
      </div>
    </section>
    <section id="feature">
      <div class="container">
        <div class="row">
          <div class="col-md-5">
            <h1>Features</h1>
            <ul>
              <li><i class="glyphicon glyphicon-ok"></i> Single Match Game</li>
              <li><i class="glyphicon glyphicon-ok"></i> Tournament Mode Game</li>
              <li><i class="glyphicon glyphicon-ok"></i> Upload Tournament Files</li>
              <li><i class="glyphicon glyphicon-ok"></i> Download File Samples</li>
            </ul>
          </div>
          <div class="col-md-4 col-md-offset-2">
            <img class="big-logo" src="${pageContext.request.contextPath}/resources/img/0-40-paper-scissors-rock-logos.jpg">
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