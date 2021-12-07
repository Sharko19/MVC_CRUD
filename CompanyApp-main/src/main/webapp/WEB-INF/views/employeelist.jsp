<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-radius: 10px;
}
th, td {
  background-color: #ffadff;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>
</head>
<body>
	<div align="center">
		<h1>Employee List</h1>
	<form action="searchEmployee" method=get>
	<input type="text" name="string"/>
	<button>search</button>
	</form>
		<table>
		   <tr>
			<th>Name</th>
			<th>ProjectDetails</th>
			<th>Mail Id</th>
			<th>phone number</th>
           </tr>
			<c:forEach items="${employeeList}" var="emp">
				<tr>
					<td>${emp.name}</td>
					<td>${emp.project}</td>
					<td>${emp.mailId}</td>
					<td>${emp.phoneNo}</td>
					<td><a href="updateEmployee?employeeId=${emp.employeeId}">edit</a>
					<td><a href="deleteEmployee/${emp.employeeId}">delete</a>
	

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>