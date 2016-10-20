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
	<form  class="col s12" method="post" name="employee" action="employee.mvc">
		<button type="button" <a href="employee.mvc">NEW EMPLOYEE</a>>New Employee</button>
	</form>
	<button type="button" onclick=saleEmployee.mvc>New Sales Employee</button>
	<button type="button" onclick=hrReport.mvc>Employees per BU</button>
	<button type="button" onclick=Login.mvc>Logout</button>
</body>
</html>