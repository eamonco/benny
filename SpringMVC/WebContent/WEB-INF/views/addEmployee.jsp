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
          
	</head>
	<body>
		<h1>Add New Employee</h1>
		
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
				<form  class="col s12" method="post" name="employee" action="employee.mvc">
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
          					<input placeholder="Address Line 1" name="addressline1" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="Address Line 2" name="addressline2" type="text" class="validate">
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
          					<input placeholder="DepartmentId" name="departmentid" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Bank No." name="bankno" type="text" class="validate">
        				</div>
        				<div class="input-field col s6">
          					<input placeholder="Starting Salary" name="startingsalary" type="text" class="validate">
        				</div>
      				</div>
      				
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="National Insurance Number" name="nino" type="text" class="validate">
        				</div>
      				</div>
		<input type="submit" text="Login" />
	</form>
	</div>
	</body>
</html>