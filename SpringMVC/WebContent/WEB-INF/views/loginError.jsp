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
	
	<nav class="teal lighten-1" style="display:table;" role="navigation">


    <img src="http://www.freeiconspng.com/uploads/register-secure-security-user-login-icon--7.png" style="-webkit-filter: invert(100%); filter: brightness(0) invert(1);" width="50" height="50" alt="" />

    <span class="text" style="display:table-cell; vertical-align:middle; horizontal-align:left">Welcome to the Login Menu
     
     </span>
  </nav>
<h2 style="color:red;" style ="text-align: center;" >Incorrect Login credentials. Please try again</h2>
			<div>
				<form  class="col s12" method="post" name="employee" style="margin-bottom:0;" action="loginForm.mvc">
		  			<div class="row">
       		 			<div class="input-field col s6">
          					<input placeholder="User Name" name="username" style="margin-bottom:0; margin-top:10px" type="text" class="validate">
        				</div>
      				</div>
      				<div class="row">
        				<div class="input-field col s6">
          					<input placeholder="Password" style="margin-top:0"name="password" type="password" class="validate">
        				</div>
      				</div>
		<input class="waves-effect waves-light btn" style="margin-left: 10px" type="submit" value="Login" />
	</form>
	</div>
	</body>
</html>