
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %> 

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
	<header>		
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>						
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">								
								<li class="active">
								       
								<a href="#">Bio</a></li>
								<li><a class="btn btn-link" id="profilelink" onclick="document.forms['profile'].submit()">Profile</a>
					            </li>		
								
								<li role="presentation" class="pull-right">
									<form class="navbar-form navbar-right" role="search"  action="LookupMembers" method="post">
										    <div class="input-group add-on">
										      <input type="hidden" name="id" value="${attribs.id}"/>
										      <input type="text" class="form-control" placeholder="Find Members by Name" name="LookupMembers" id="LookupMembers" SIZE='20'>
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
										      </div>
										    </div>
									 </form>									
						        </li>
						        
						        <li class="pull-right"><a href="logout" id="logout">${attribs.fname} | Logout</a></li>
						        
																			  						
							</ul>
						</div>
					</div>						
				</div>
			</div>				
	</header>
	
	<div class="container">
	
	
	<form id="resetpassword" method="post" action="admin">
	<input type="hidden" name="id" value="${attribs.id}">
	</form>
	
	<form id="admin" method="post" action="admin">
	<input type="hidden" name="id" value="${attribs.id}">
	</form>
	
	<form id="userEdits" method="post" action="userEdits">
	<input type="hidden" name="id" value="${attribs.id}">
	</form>
		
			<div>
				<h1 style="color: #008000" class="text-center">Bio for ${attribs.fname}				
				</h1>
				
				<p style="color: #008000">${msg} </p>
				<h2 style="color: #008000">${message}</h2>
				<h2 style="color: #008000">${success} </h2>
				<h2 style="color: #FF0000">${error} </h2>
				<h2 style="color: #008000">${email} </h2>
				<h2 style="color: #008000">${myname} </h2>
				
				                 			
				
			</div>
			
			
		<div class="row">
		<div class="col-md-6">
		<table class="table table-hover table-bordered" > 
						<tr style="background-color: #bce8f1;">
                    	 	<td>Artist</td>
						     <td>
						    
						     <span class="fa fa-calendar" style="font-size:18px;color:green; padding-top: 2px;">
					         Details <%= df.format(new java.util.Date()) %>
					         </span>
						     
						      </td>
                    	 </tr>
                    	 <tr>
                    	    <td>Name </td> <td><span style="color:red" class="glyphicon glyphicon-user"></span> <c:out value="${attribs.fname}"/> <c:out value="${attribs.lname}"/></td>
                    	 </tr>                    	 
                    	 <tr>
                    	    <td>Contact Info</td> <td><span style="color:red" class="fa fa-phone fa"></span> <c:out value="${attribs.tel}"/>  <span style="color:red" class="fa fa-envelope fa"></span> <c:out value="${attribs.emailAddress}"/></td>
                    	 </tr>
                    	 
                    	 <tr>
                    	    <td>Address </td> <td><span style="color:red" class="glyphicon glyphicon-home"></span> <c:out value="${attribs.address}"/> <c:out value="${attribs.city}"/> <c:out value="${attribs.state}"/> <c:out value="${attribs.zip}"/></td>
                    	 </tr>
                    	 <tr>
                    	    <td>Web site </td> <td><span style="color:green" class="glyphicon glyphicon-globe"></span> <a href="${attribs.website}"><c:out value="${attribs.website}"/> </a> </td>
                    	 </tr>
    		  </table>
    		  </div>
    		  <div class="col-md-6">
    		  <h3>My Bio</h3>
    		   <p>${attribs.background}</p>
    		   <p>Visit my web site <a href="${attribs.website}">http://www.missjillscott.com/</a></p>
    		  </div>
		</div>
		
		<div class="row">
		<form id="msgArtist" method="post" action="messageArtist">			
								
			<div class="col-md-4">
				<div class="form-group">
				    <input type="hidden" name="id" value="${attribs.id}"/>
					<input type="hidden" class="form-control"  value="${attribs.message}" id="message" name="message" placeholder="message">
					<input type="text" class="form-control"  id="name" name="name" placeholder="Name">
					
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<input type="text" class="form-control" id="subject" name="subject" placeholder="Email">			    	
				</div>
			</div>
		
			<div class="col-lg-8">				
				<textarea class="form-control" id="msg" name="msg"  rows="5" placeholder="message" required></textarea>
				<br>
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-primary" >Submit Message</button>					
				</div>
			</div>
				
	
</form>	
</div>		
		
		
		
	</div>
	<br>
	<div id="show" class="collapse">
	<%@include file="getpswd.jsp" %>
	</div>
	
	<form id="profile" method="post" action="profile">
	<input type="hidden" name="id" value="${attribs.id}">
	</form>
      
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

