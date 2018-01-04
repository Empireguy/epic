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
	<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Upload Profile Picture</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="title">Title</label>
  <div class="controls">
    <input id="title" name="title" type="text" placeholder="Name" class="input-xlarge">
    
  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="Description">Description</label>
  <div class="controls">                     
    <textarea id="Description" name="Description">Description</textarea>
  </div>
</div>

<!-- File Button --> 
<div class="control-group">
  <label class="control-label" for="filebutton">Video File</label>
  <div class="controls">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label" for="singlebutton"></label>
  <div class="controls">
    <button id="singlebutton" name="singlebutton" class="btn btn-info">Upload</button>
  </div>
</div>

</fieldset>
</form>
	
	
	<form id="editUser" method="post"  action="saveUser">
                    
      <div class="contact-form">
              <div class="container">
                                  
                     <div class="col-md-4" >
                           <div class="form-group">
                              <label for="ln" id='eln' >Last Name*</label>
                              <input type="hidden" class="form-control" name="loggedin" value="${id}"/>
                              <input type="hidden" class="form-control" name="id" value="${attribs.id}"/>
                              <input type="hidden" class="form-control" name="roles" value="${attribs.roles}"/>
							  <input type="hidden" class="form-control" name="emailAddress" id="emailAddress"  value="${attribs.emailAddress}"/>							    
                              <input type="hidden" class="form-control" name="password" id="password" value="${attribs.password}"/>
                              <input type=text id="lname" name="lname" class="form-control input-sm" placeholder="Last Name" value="${attribs.lname}"> 
                           </div>
                           
                     </div>
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="fn" id='efn' >First Name*</label>                              
                              <input type=text id="fname" name="fname" class="form-control input-sm" placeholder="First Name" value="${attribs.fname}"> 
                           </div>
                           
                     </div>
                     
                     <div class="col-md-1">
                           <div class="form-group">
                              <label for="ag" id='eag' >Age*</label>
                              <input type='number' id="age" name="age" class="form-control input-sm" placeholder="Age"  min="21" value="${attribs.age}"> 
                           </div>
                           
                     </div>
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="ad" id='ead'>Address*</label>
                              <input type=text id="address" name="address" class="form-control input-sm" placeholder="Address" value="${attribs.address}"> 
                           </div>
                           
                     </div>
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="tl" id='etl'> City</label>
                              <input type=text id="city" name="city" class="form-control input-sm" placeholder="Job Title" value="${attribs.city}"> 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
                     
                     <div class="col-md-4">
                           <div class="form-group">
                              <label for="tl" id='etl'> State</label>
                              <input type=text id="state" name="state" class="form-control input-sm" placeholder="Job Title" value="${attribs.city}"> 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
                     
                     <div class="col-md-3">
                           <div class="form-group">
                              <label for="tl" id='etl'> Zip</label>
                              <input type=text id="zip" name="zip" class="form-control input-sm" placeholder="Job Title" value="${attribs.zip}"> 
                           </div>
                           <div id='etl'>
                           
                           </div>
                     </div>
    
                     
                     <div class="col-md-3">
                           <div class="form-group">
                              <label for="tel" id='etel'>Telephone*</label>
                              <input type=text id="tel" name="tel" class="form-control input-sm" placeholder="Telephone" value="${attribs.tel}"> 
                           </div>
                           
                     </div>
                     
                     
                     <div class="col-md-3">
                           <div class="form-group">
                           <label for="subscription" id='subscription'>Subscription Type</label>
                              <select name="subscription" id="subscription" class="form-control input-sm">
                                                  <option value="Life Time Membership">Life Time Membership $400</option>
                                                  <option value="Anual Subscription" >Annual Subscription $100</option>  
                                                  <option value="Monthly Subscription" >Monthly Subscription $35</option>                                                
                                                  <option value="${attribs.subscription}" selected>${attribs.subscription}</option>                                           
                                                 </select>                       
                           </div>                           
                     </div>
                     
                     <div class="col-md-3">
                           <div class="form-group">
                              <label for="cd" id='eag' >Credit Card</label>                               
                              <input type='number' id="card" name="card" class="form-control input-sm" placeholder="Credit/debit card"   min="900000" value="${attribs.card}"> 
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

