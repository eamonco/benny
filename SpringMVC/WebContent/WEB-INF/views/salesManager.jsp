
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" 
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Sales Manager Report Report</title>
</head>
<body>
<nav class="teal lighten-1" style="display:table;" role="navigation">


    <img src="http://image.flaticon.com/icons/png/512/27/27825.png" style="-webkit-filter: invert(100%); " width="50" height="50" alt="" />

    <span class="text" style="display:table-cell; vertical-align:middle; horizontal-align:left">Sales Employee with the highest sales total for the current period
     
     </span>
  </nav>

<table class = "striped">
<thead><tr><th>Sales Employee</th><th>Highest Sales Total</th></tr></thead>
<c:forEach var="row" items="${rows}">
<tr>
<td><c:out value="${row[0]}"/></td>
<td><c:out value="${row[1]}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>