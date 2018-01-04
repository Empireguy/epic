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

	<script>
    window.history.forward();
    </script>
    
  </head>
  <body>
	
	<div class="container">	                                 
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
    </div>       
        
        <div class="container">	
          <div class="col-md-8" >
             <c:if test="${not empty attribs}">       
              <table class="table table-hover table-bordered"> 
						<tr style="background-color: #bce8f1;">
                    	 	<td>
                    	 	
					           User							
						  
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
                    	    <td>Subscription</td> <td>${attribs.subscription} </td>
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
                        
                        <th>Name</th>
                        <th>Email</th>                        
                        <th>Address</th>                                               
                        <th>Web site</th>
						                  	
                    </tr>
                    </thead>
                    <tbody  >
                     <c:forEach items="${users}" var="item">
                        <tr class="text-success">
							<th><c:out value="${item.fname}"/> <c:out value="${item.lname}"/></th>
							<th><c:out value="${item.emailAddress}"/></th> 							 
							<th><c:out value="${item.address}"/>, <c:out value="${item.city}"/> <c:out value="${item.state}"/> <c:out value="${item.zip}"/></th>
							<th><c:out value="${item.website}"/></th>				                	
                           </tr>
                      </c:forEach>
                    </tbody>
                </table>
                </c:if>
		  		    
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

