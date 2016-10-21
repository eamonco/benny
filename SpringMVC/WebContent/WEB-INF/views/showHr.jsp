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
<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

<nav class="teal lighten-1" style="display:table;" role="navigation">


    <img src="https://cdn3.iconfinder.com/data/icons/business-people-2/512/Business_Group-512.png" style="-webkit-filter: invert(100%); " width="50" height="50" alt="" />

    <span class="text" style="display:table-cell; vertical-align:middle; horizontal-align:left">Employees Per BU
     
     </span>
  </nav>

<ul>     
	<table class="striped">
	<thead>
		<tr><th data-field="BU">BU</th><th data-field="Number of Employees">Number of Employees</th></tr></thead>
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