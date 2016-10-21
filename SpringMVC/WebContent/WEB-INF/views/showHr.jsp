<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Per BU</title>
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
    <img src="https://cdn3.iconfinder.com/data/icons/business-people-2/512/Business_Group-512.png" style="-webkit-filter: invert(100%); filter: brightness(0) invert(1); margin-left: 10px;" width="50" height="50" alt="Peeps"  />
</div>
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
     
	<form  class="col s12" method="post"  style="padding: 5px 10px;name="employee" action="employee.mvc">
		<input type="submit"  class="waves-effect waves-light btn" value="Add another Employee"/>
	</form>
	<form  class="col s12" method="post"  style="padding: 5px 10px;name="employee" action="login.mvc">
		<input type="submit"  class="waves-effect waves-light btn" value="Logout"/>
	</form>
</ul>
</body>
</html>