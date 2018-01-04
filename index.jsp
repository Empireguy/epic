<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Epic</title>

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${contextPath}/resources/css/agency.min.css" rel="stylesheet">

    <!-- Temporary navbar container fix -->
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    </style>

</head>

<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-inverse" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#page-top">Epic</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    <a href="signups" class="btn btn-primary" role="button">Sign Up</a>
            </li>
            </ul>
            </div>        
        </div>
    </nav>
	
    <!-- Header -->
    <header class="masthead">
    <div class="container">
        	<div class="intro-text">	
           	
           	 <div class="intro-lead-in">Welcome To Our Studio!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
           	 	<div class="intro-lead-in">Login</div>
           	 	<script>
    window.history.forward();
    </script>
		
		<div class="container">
		 
			<div>
				<h3 style="color: #008000">${msg} </h3>
				<h2 style="color: #008000">${message}</h2>
				<h2 style="color: #008000">${success} </h2>
				<h2 style="color: #FF0000">${error} </h2>
				
			</div>
		<div></div>
	</div>
   
	<div class="container">	
		
		<div class="well">
			 <div class="row">
					<div class="col-lg-12">
						<form id="myForm" action="loginMember" method="post" class="bs-example form-horizontal">
							<fieldset>								
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Email</label>
									<div class="col-lg-4 offset-lg-4">
										<input type="text" class="form-control" name="emailAddress" id="emailAddressInput" placeholder="User Name" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="passwordInput" class="col-lg-3 control-label">Password</label>
									<div class="col-lg-4 offset-lg-4">
										<input type="password" class="form-control" name="password" id="password" placeholder="Password" />
									</div>
								</div>
								

							<div class="col-lg-12 col-lg-offset-3">									
									<button class="btn btn-primary">Login</button>
									<a href="index" class="btn btn-primary" role="button">Cancel</a>
									<a href="forgotpassword" class="btn btn-primary" role="button">Forgot Password</a>
								</div>	
							</fieldset>
						</form>
					</div>
				</div>
				</div>
				</div>	
			</div>
			
		</div>		
	</header>
    
 <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2017</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li class="list-inline-item">
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Bootstrap core JavaScript -->
    <script src="${contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/vendor/tether/tether.min.js"></script>
    <script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="${contextPath}/resources/js/jqBootstrapValidation.js"></script>
    <script src="${contextPath}/resources/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${contextPath}/resources/js/agency.min.js"></script>

</body>

</html>

