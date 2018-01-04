
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
<!-- Navigation -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-inverse" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#page-top">Epic</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto" role="tablist">
                <li class="nav-item">
                        <a class="nav-link" href="money">Profile</a>
                    </li>
                    
                      <li class="pull-right">
						        	<form class="navbar-form navbar-right" role="search"  action="lookupMember" method="post">
										    <div class="input-group add-on">										      
										      <input type="text" class="form-control" placeholder="Search Members" name="lookupMember" id="lookupMember" SIZE='13'>
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
										      </div>
										    </div>
									 </form>	
						        </li>	
                   
                
                   
                </ul>
            </div>
        </div>
    </nav>
   
   <header class="masthead">
    
	<div class="container">	
                                  
                                  <div class="text-center">
                                  <h3 class="text-success" style="color: #008000"> 
		                              
                                   ${message} 
                                   
                                   ${fn} 
                                   ${ln} 
                                   ${em}  
                                   
                                   </h3>  
                                   <h3 class="text-danger" >    
                                   ${error}                                   
                                   </h3>  
                                   </div>
                                  
                                   
  <div class="container">	                                 
    <form class="col-md-4" id="handlepost" method="post"  action="handlepost">                    
      <div class="contact-form">
              <div class="container">                                
                    
                     <div class="col-md-3">
                           <div class="form-group">
                                <label for="emailAddressInput" >Email Look-Up*</label>									
									    <input type="hidden" name="roles" value="user"/>
										<input type="text" class="form-control" name="emailAddress" id="emailAddressInput" value="${attribs.emailAddress}" placeholder="Email Address" required/>
							    </div>                           
                     </div>
                     
                     <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 		                              
		                             </div>
                                  </div>
                </div>
       </div>         
           
        </form>
        
    <form class="col-md-4" id="lookupname" method="post"  action="lookUpname">                    
      <div class="contact-form">
              <div class="container">                                  
                     <div class="col-md-3" >
                           <div class="form-group">
                              <label for="ln" id='eln' >Name Look-up*</label>
                               <input type=text id="lname" name="lname" value="${attribs.lname}" class="form-control input-sm" placeholder="Enter Name" required> 
                           </div>                           
                     </div>                       
                          <div class="col-md-12" >
		                             <div class="form-group">		                           
					                   <button type="submit" name="submit" id="submit" class="btn btn-primary" >Submit</button> 
		                               
		                             </div>
                                  </div> 
              </div>
          </div>
       </form>
    </div>       
        
        <div class="container">	
          <div class="col-md-8" >
             <c:if test="${not empty attribs}">       
              <table class="table table-hover table-bordered"> 
						<tr style="background-color: #bce8f1;">
                    	 	<td>
                    	 	
					           User							
						  
						     </td>
						     <td>
						    
						     <span class="fa fa-calendar" style="font-size:18px;color:green; padding-top: 2px;">
					         Details <%= df.format(new java.util.Date()) %>
					         </span>
						     
						      </td>
                    	 </tr>
                    	 <tr>
                    	    <td>Name </td> <td><c:out value="${attribs.fname}"/> <c:out value="${attribs.lname}"/></td>
                    	 </tr>
                    	 <tr>
                    	 	<td>User Email  </td><td><c:out value="${attribs.emailAddress}"/></td>
                    	 </tr>                     	 
                    	 <tr>
                    	    <td>Telephone #</td> <td>${attribs.tel}</td>
                    	 </tr>  
                    	 <tr>
                    	    <td>Address</td> <td>${attribs.address}</td>
                    	 </tr>  
                    	 <tr>
                    	    <td>Role</td> <td>${attribs.roles} User</td>
                    	 </tr>                    	 
                   </table> 
                    <a class="btn btn-primary" href="services"> <span class="glyphicon glyphicon-refresh"> New Look-Up</span></a>		                           
                                 
                   </c:if>
                   </div>
                   </div>
                   
                   
                   <div class="panel-body">
		
		<c:if test="${not empty users}">
		<table class="table table-hover table-bordered">
                    <thead style="background-color: #ff6600;">
                    <tr > 
                        
                        <th>Subscription Type</th>
                        <th>Name</th>
                        <th>Email</th>                        
                        <th>Address</th>                                               
                        
						                  	
                    </tr>
                    </thead>
                    <tbody  >
                     <c:forEach items="${users}" var="item">
                        <tr class="text-success">
                            
							<th><c:out value="${item.fname}"/> <c:out value="${item.lname}"/></th>
							<th><c:out value="${item.emailAddress}"/></th> 							 
							<th><c:out value="${item.address}"/>, <c:out value="${item.city}"/> <c:out value="${item.state}"/> <c:out value="${item.zip}"/></th>
							 					                	
                           </tr>
                      </c:forEach>
                    </tbody>
                </table>
                </c:if>
		  		    
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