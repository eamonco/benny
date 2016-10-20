<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee List</title>
</head>
<body>
Students
<ul>
	<c:forEach items="${employeeList}" var="student">
		<li>
			${employee.firstName} ${employee.lastName}
		</li>
	</c:forEach>

	<a href="addEmployee.mvc" >Add another employee</a>
</ul>
</body>
</html>