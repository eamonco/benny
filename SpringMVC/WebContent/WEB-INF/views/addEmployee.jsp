<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" 
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Add Employee</title>
		<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          
   <style>
div {
    margin-left: 10px;
    margin-top: 10px;
}
</style>
          
	</head>
	<body>
	
	
	<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
	
	<nav class="teal lighten-1" style="display:table;" role="navigation">

<div>
    <img src="http://icons.iconarchive.com/icons/iconsmind/outline/256/Add-User-icon.png" style="-webkit-filter: invert(100%); " width="50" height="50" alt="" />
</div>
    <span class="text" style="display:table-cell; vertical-align:middle; horizontal-align:left">Add Employee
     
     </span>
  </nav>
	
		
	<!-- 	 int employeeNo;
     String forename;
     String surname;
     String addressLine1;
     String addressLine2;
     String town;
     String county;
     String postcode;
     int departmentId;
     String bankNo;
     double startingSalary;
     String nino; -->	
		
		
			<div>
				<form  class="col s12" style="margin-top:10px" method="post" name="employee" action="employeeForm.mvc">
		  			<div class="row">
       		 			<div class="input-field col s6">
          					<input placeholder="Forename" name="forename" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="Surname" name="surname" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Address Line 1" name="addressLine1" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="Address Line 2" name="addressLine2" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Town" name="town" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="County" name="county" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Postcode" name="postcode" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="DepartmentId" name="departmentId" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Bank No." name="bankNo" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="Starting Salary" name="startingSalary" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="National Insurance Number" name="nino" type="text" class="validate">
        				</div>
      				</div>

      				
		<input class="waves-effect waves-light btn" type="submit" style="margin-left: 10px" text="Login" />
	</form>
	</div>
	</body>
</html>