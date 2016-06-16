<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>
   		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">    
    	<title>About</title>
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
            			<li><a href="${pageContext.request.contextPath}/">Home</a></li>
            			<li><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            			<li><a href="#">Tournament Mode</a></li>
            			<li><a href="#">Tournament Results</a></li>
            			<li class="active"><a href="${pageContext.request.contextPath}/about">About</a></li>
          		</ul>
        		</div><!--/.nav-collapse -->
      		</div>
    	</nav>
    	<section id="title-bar">
      		<div class="container">
        		<div class="row">
          		<div class="col-md-12">
            			<h1>About me and the Rock, Paper, Scissors solution</h1>
          		</div>
        		</div>
      		</div>
    	</section>
    	<section id="about">
      		<div class="container">
        		<div class="row">
          		<div class="col-md-8">
            			<h2>About me</h2>
            			<p> I'm a proactive person who learns through online courses and researching. I believe in teamwork, responsibility, new challenges and I like to achieve results. As a developer I like the Java programming tecnologies and frameworks like Spring. I'm also interested in Amazon Web Services which is oriented to Cloud Developing. I'm still studying Software Development Engineering (waiting to get the Software Developer Technician degree)   but I do have one year of experience working as back end Java Developer.</p>
            			<br>
            			<h2>About the solution</h2>
            			<br>
            			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            				
            				<div class="panel panel-default">
              				<div class="panel-heading" role="tab" id="headingOne">
                					<h4 class="panel-title">
                  					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Spring Boot for the website</a>
                					</h4>
              				</div>
              				<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                					<div class="panel-body">
                  					Spring Boot is a Spring project that aims to make it easy to create Spring applications with minimum fuss.  It takes an opinionated view of the Spring platform so that new and existing users can quickly get to the bits they need. You can use it to create stand-alone Java applications that can be started using ‘java -jar’ or more traditional WAR deployments.
                					</div>
              				</div>
            				</div>
            				
            				<div class="panel panel-default">
              				<div class="panel-heading" role="tab" id="headingTwo">
                					<h4 class="panel-title">
                  					<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Spring Boot for the RESTFull API</a>
                					</h4>
              				</div>
              				<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                					<div class="panel-body">
                  					Since the website was created using a Spring Boot approach I decided to create the RESTFull services using the same technology. It is easy to create Rest Controllers and services that will be properly consumed. 
                					</div>
              				</div>
            				</div>
            				
            				<div class="panel panel-default">
              				<div class="panel-heading" role="tab" id="headingThree">
                					<h4 class="panel-title">
                  					<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Amazon Web Services to support the backend</a>
                					</h4>
              				</div>
              				<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                					<div class="panel-body">
                						There is no cloud infrastructure provider that has more robust enterprise capabilities than AWS. I decided to use AWS EC2 service to make the deployment because it reduces the time required to obtain and boot new server instances. 
                					</div>
              				</div>
            				</div>
            				
            				<div class="panel panel-default">
              				<div class="panel-heading" role="tab" id="headingFour">
                					<h4 class="panel-title">
                  					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Embedded database</a>
                					</h4>
              				</div>
              				<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                					<div class="panel-body">
                  					An embedded H2 in memory database was chosen since it is very fast, open source and it has a JDBC API.
                					</div>
              				</div>
            				</div>
            				
          			</div>
          			
          		</div>
          		<div class="col-md-4">
            			<img src="${pageContext.request.contextPath}/resources/img/oscar.jpg" class="demo1">
            			<h2 class="about-image-developer">Oscar Santamaría Venegas</h2>
            			<p class="about-image-title"><i>Java Software Developer</i></p>
          		</div> 
        		</div>
      		</div>
    	</section>
    	<footer>
      		<div class="container">
        		<div class="row">
          		<div class="col-md-6 col-xs-12">
            			<ul>
            				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
            				<li><a href="${pageContext.request.contextPath}/singlematch">Single Match</a></li>
            				<li><a href="#">Tournament Mode</a></li>
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