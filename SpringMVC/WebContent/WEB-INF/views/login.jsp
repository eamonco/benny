<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" 
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          
	</head>
	<body>
		<h1>Login</h1>
			<div>
				<form  class="col s12" method="post" name="employee" action="loginForm.mvc">
		  			<div class="row">
       		 			<div class="input-field col s6">
          					<input placeholder="User Name" name="username" type="text" class="validate">
        				</div>
      				</div>
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Password" name="password" type="password" class="validate">
        				</div>
      				</div>
		<input type="submit" text="Login" />
	</form>
	<a href="employeeLists.mvc">Go Back</a>
	</div>
	</body>
</html>