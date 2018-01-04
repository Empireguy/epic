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

    <!-- Header -->
        <div class="container">
        	<div class="intro-text">	
           	 <div class="form-nlogi">
           	  <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">We are here to help you.</h3>
                </div>
            </div>
	
			<div class="container">
		     <div class="col-lg-12">
				<div class="form-group"><br>
				<span class="text-success">${success}</span>
				<div class="text-center">
				<div class="text-primary">${message}</div>
				</div>
				
				</div>
			</div>
			</div>
			</div>
<form id="emails" method="post" action="sendEmail">			
		<div class="contact-form">
		<div class="container">	
								
			<div class="col-md-4">
				<div class="form-group">
					<input type="email" class="form-control"  value="${em}" id="emailAddress" name="emailAddress" placeholder="email Address">
					<span class="text-danger">${emailrror}</span>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<input type="text" class="form-control" value="${sb}" id="subject" name="subject" placeholder="subject">
			    	<span class="text-danger">${sbjrror}</span>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="col-lg-12">				
				<textarea class="form-control" id="msg" name="msg"  rows="5" placeholder="message"></textarea>
				<p class="text-danger">${msgerror}</p>
				
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-primary" >Submit Message</button>
					<a href="contact" class="btn btn-primary" role="button">Reset</a>
				</div>
			</div>
		</div>		
	</div>
</form>
</div>
</div>
    
    
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

