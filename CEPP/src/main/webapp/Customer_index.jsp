<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Address</th>
		<th>Phone</th>
		<th>Plumber</th>
		<th>Carpentar</th>
		<th>Painter</th>
		<th>Electrician</th>
	</tr>
	<c:forEach items="${userList}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.name}"/></td>
    	<td><c:out value="${user.address}"/></td>
    	<td><c:out value="${user.phone}"/></td>
    	<td><c:out value="${user.plumber}"/></td>
    	<td><c:out value="${user.carpentar}"/></td>
    	<td><c:out value="${user.painter}"/></td>
    	<td><c:out value="${user.electrician}"/></td>
    </tr>
</c:forEach>
</table>
</body>
</html>