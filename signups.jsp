
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<script>
function goBack() {
    window.history.back()
}
</script>

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
                     <a href="index" class="btn btn-primary" role="button">Login</a>
                    </li>
            </ul>
            </div>        
        </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
        <div class="container">
        	<div class="intro-text">	
				<form id="myForm" action="loginMember" method="post" class="bs-example form-horizontal">
           	 	<div class="form-nlogi">
           	 	<div class="intro-lead-in">Become Apart of Something Big</div>
                <div class="intro-heading">SIGN UP</div>
            	</div>
            	</form>
            </div>
		</div>
		<div class="container">
	<h2 style="color: #FF0000">${error} </h2>
		<div class="col-lg-12">
			<div>
			
			<h1>Epic Registration </h1>
			    <c:if test="${empty error}">
			    
				<c:if test="${empty message}">
				
				</c:if>
				<h2>				
				<c:if test="${not empty message}">
				<h1>Epic Registration Success</h1>
				<div class="text-success">
				<h2>${message} <a href="login">Login</a></h2>
				</div>						
				</c:if>				
				</h2>	
				<h2 style="color: #FF0000">${error} </h2>
				</c:if>			
			</div>
		</div>

		<div>
		     
		</div>
	</div>
	
	<form id="signupForm" method="post"  action="signupMember">                    
      <div class="contact-form col-lg-12">
              <div class="container">
                                  
                     <div class="col-lg-4" >
                              <label for="ln" id='eln' >Last Name*</label>
                              <input type=text id="lname" name="lname" class="form-control input-sm" placeholder="Last Name" >  
                          
                              <label for="fn" id='efn' >First Name*</label>
                              <input type=text id="fname" name="fname" class="form-control input-sm" placeholder="First Name" > 
                    <div id='etl'>
                           
                           </div>
                    </div>
                     
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="tl" id='etl'>Job Title*</label>
                              <input type=text id="job title" name="job title" class="form-control input-sm" placeholder="Job Title" > 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
                     
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="ad" id='ead'>Address*</label>
                              <input type=text id="address" name="address" class="form-control input-sm" placeholder="Address" > 
                           </div>
                           
                     </div>
                     
                     <div class="col-md-2">
                           <div class="form-group">
                              <label for="tl" id='etl'> City</label>
                              <input type=text id="city" name="city" class="form-control input-sm" placeholder="City" > 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
                     
                     <div class="col-md-2">
                           <div class="form-group">
                     
						<label for="city">State</label>
						<div class="form-group">
						<select name="state" class="form-control input-sm"> 
						<c:forEach items="${states}" var="state">
						<option value="${state}">${state}</option>
						</c:forEach>
						</select>
						</div>	
						</div>
						    </div>
                          
                     
                     <div class="col-md-2">
                           <div class="form-group">
                              <label for="tl" id='etl'> Zip</label>
                              <input type=text id="zip" name="zip" class="form-control input-sm" placeholder="Zip Code" > 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
    
                     
                     <div class="col-md-2">
                           <div class="form-group">
                              <label for="tel" id='etel'>Telephone*</label>
                              <input type=text id="tel" name="tel" class="form-control input-sm" placeholder="Telephone" > 
                           </div>
                           
                     </div>
                     
                     <div class="col-md-4">
                           <div class="form-group">
                                <label for="emailAddressInput" >Email*</label>									
									    <input type="hidden" name="roles" value="user"/>
										<input type="text" class="form-control" name="emailAddress" id="emailAddressInput" placeholder="Email Address" />
							    </div>                           
                     </div>
                    
                     <div class="col-md-3">
                           <div class="form-group">
                              <label for="ag" id='eag' >Password*</label>                               
                              <input type="password" class="form-control" name="password" id="password" placeholder="Password" />
                           </div>                           
                     </div>
                     
                     <div class="col-md-3">
                           <div class="form-group">
                              <label for="ps" id='ps' >Reenter password*</label>                               
                              <input type="password" class="form-control" name="passwordConfirm" id="passwordConfirm" placeholder="Re-enter password" />
                           </div>                           
                     </div>
                     
                     
                     
                     <div class="col-md-12" >
		                           <div class="form-group">
		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button>
					                   <a href="index" class="btn btn-primary" role="button">Cancel</a>
								 				
					                
						               
		                              </div>
                                  </div> 
                                  
                                  
                                  
              </div>
       </div>         
           
        </form>
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
