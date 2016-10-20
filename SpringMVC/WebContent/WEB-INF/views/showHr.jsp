<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee List</title>
<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
          
</head>
<body>
<h1>Employees per BU</h1>
<ul>     
	<table>
		<tr><th>BU</th><th>Employee</th></tr>
		<c:forEach var="row" items="${rows}">
		<tr>
			<td><c:out value="${row[0]}"/></td>
			<td><c:out value="${row[1]}"/></td>
		</tr>
		</c:forEach>
</table>
     
	<a href="addEmployee.mvc" >Add another employee</a>
</ul>
</body>
</html>