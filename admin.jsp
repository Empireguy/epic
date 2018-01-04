<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- <script>
    window.history.forward();
    </script> -->
    
  </head>
  <body>
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
								<li class="active"><a href="#">Administrator</a></li>
						        <li>
						        <li><a  id="profilelink" onclick="document.forms['profile'].submit()">Profile</a></li>
						        <li role="presentation" class="pull-right">
									<form class="navbar-form navbar-right" role="search"  action="searchMembers" method="post">
										    <div class="input-group add-on">
										    <input type="hidden" name="id" value="${id}"/>
										      <input type="text" class="form-control" placeholder="Search Members" name="searchNames" id="searchNames" SIZE='15'>
										      <div class="input-group-btn">
										        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
										      </div>
										    </div>
									 </form>									
						        </li>
			                    <li  class="pull-right"><a href="logout" id="logout">Logout | ${user}</a></li>	
							</ul>
						</div>
					</div>						
				</div>
			</div>				
	</header>
	
	<div class="container">
	
	<form id="profile" method="post" action="profile">
	<input type="hidden" name="id" value="${id}">
	</form>
		                   <c:choose>
							    <c:when test="${empty users}">
							     <div>
									<h1>Wellness Club Administration Panel</h1>
									<h3>${msg} Access denied, you must login as admin to view this page <a class="btn btn-primary" href="login">Login</a></h3>
									
									<h2>${message}</h2>
									<h2>${success} </h2>
									<h2>${error} </h2>				
								 </div>    
							    </c:when>    
							    <c:otherwise>
							     <div>
									<h1>Wellness Club Administration Panel 									
									</h1>
									<p>${msg} </p>
									
									<h2>${message}</h2>
									<h2>${success} </h2>
									<h2>${error} </h2>				
								</div>     
							    </c:otherwise>
							</c:choose>	
		               <div>
		               
		<c:if test="${not empty users}">
		<table class="table table-hover table-bordered">
                    <thead style="background-color: #ff6600;">
                    <tr > 
                        <th>Id</th>
                        <th>Subscription Type</th>
                        <th>Name (edit/delete)</th>
                        <th>Email</th>
                        <th>Telephone</th>	
                        <th>Address</th>                                               
                        <!-- <th>Edit User</th> -->
                        <%-- <c:choose>
						    <c:when test="${fn:containsIgnoreCase(role, 'super')}">
						       <th>Delete User</th> </c:when>    
						    <c:otherwise>
						        
						    </c:otherwise>
						</c:choose>	 --%>
						
						<th>Assign Roles</th>                    	
                    </tr>
                    </thead>
                    <tbody  >
                     <c:forEach items="${users}" var="item">
                        <tr class="text-success">
                            <th><c:out value="${item.id}"/></th>
                            <th><c:out value="${item.subscription}"/></th>
							<th><c:out value="${item.fname}"/> <c:out value="${item.lname}"/><br>
							<a title="edit User" href="editUser?id=<c:out value='${item.id}'/>&loggedin=<c:out value='${id}'/>">edit <span class="glyphicon glyphicon-edit"></span></a> |
							<c:choose>
							    <c:when test="${fn:containsIgnoreCase(role, 'super')}">
							    <a title="Delete User" href="deleteUser?id=<c:out value='${item.id}'/>&loggedin=<c:out value='${id}'/>">delete<span id="<c:out value='${item.emailAddress}'/>" class="glyphicon glyphicon-trash"></span></a>                  	     
							    </c:when>    // up top is a default for get. 
							    <c:otherwise>							        
							    </c:otherwise>
							</c:choose>	
							</th>
							<th><c:out value="${item.emailAddress}"/></th> 
							<th><c:out value="${item.tel}"/></th> 
							<th><c:out value="${item.address}"/>, <c:out value="${item.city}"/></th>
							  <%-- <c:choose>
							    <c:when test="${fn:containsIgnoreCase(role, 'super')}">
							       <th><a href="deleteUser?id=<c:out value='${item.id}'/>&loggedin=<c:out value='${id}'/>"><span id="<c:out value='${item.emailAddress}'/>" class="glyphicon glyphicon-trash"></span> delete</a></th>                    	     
							    </c:when>    
							    <c:otherwise>
							        
							    </c:otherwise>
							</c:choose>	 --%>						
							<c:choose>
							    <c:when test="${fn:containsIgnoreCase(role, 'super')}">
							      <th>
							           <form action="assignRole" method="post">
										    <div class="input-group add-on">
										      <input type="hidden" name="id" value="${item.id}"/>
										      <input type="hidden" name="loggedin" value="${id}"/>
										      <select name="roles" id="roles" class="form-control input">
										      	  <option value="#" selected>${item.roles}</option>
										      	  <option value="super" >super</option>
                                                  <option value="admin">admin</option>
                                                  <option value="user" >user</option>        
                                             </select> 
										      <div class="input-group-btn">
										         <button class="btn btn-success" type="submit"  title="assign roles">submit</button>
										      </div>
										    </div>
									 </form>		
							    </th>		
							    </c:when>    
							    <c:otherwise>
							     <th>
							           <form action="assignRole" method="post">
										    <div class="input-group add-on">
										      <input type="hidden" name="id" value="${item.id}"/>
										      <input type="hidden" name="loggedin" value="${id}"/>
										      <select name="roles" id="roles" class="form-control input">										      	 
                                                  <option value="" selected>${item.roles}</option> 
                                                  <option value="admin">admin</option>
                                                  <option value="user" >user</option>       
                                             </select> 
										      <div class="input-group-btn">
										         <button class="btn btn-success" type="submit"  title="assign roles">submit</button>
										      </div>
										    </div>
									 </form>		
							    </th>   
							    </c:otherwise>
							</c:choose>
                            
                    	    					                	
                           </tr>
                           </c:forEach>
                    </tbody>
                </table>
		</c:if>
		</div>
	</div>
   
	<div class="container">	
		
		</div>		
	
  </body>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
</html>
