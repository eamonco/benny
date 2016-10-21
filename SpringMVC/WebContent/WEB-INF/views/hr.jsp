<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>HR Menu</title>

</head>
<body>

<nav class="teal lighten-1" style="display:table;" role="navigation">


    <img src="http://image.flaticon.com/icons/png/512/27/27825.png" style="-webkit-filter: invert(100%); " width="50" height="50" alt="" />

    <span class="text" style="display:table-cell; vertical-align:middle; horizontal-align:left">Welcome to the HR Menu
     
     </span>
  </nav>


	<form method="post" style="padding: 5px 10px; padding-top: 10px; name="employee" action="employee.mvc">
		<input type="submit" class="waves-effect waves-light btn"  value="New Employee"/>
	</form>
	
	
	<form  class="col s12" method="post" style="padding: 5px 10px; name="employee" action="salesEmployee.mvc">
		<input type="submit" class="waves-effect waves-light btn" value="New Sales Employee"/>
	</form>
	
	
	<form  class="col s12" method="post" style="padding: 5px 10px; name="employee" action="hrReport.mvc">
		<input type="submit" class="waves-effect waves-light btn"  value="Employees per BU"/>
	</form>
	<form  class="col s12" method="post"  style="padding: 5px 10px;name="employee" action="login.mvc">
		<input type="submit"  class="waves-effect waves-light btn" value="Logout"/>
	</form>
	

            
	
</body>
</html>