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
	<c:forEach items="${CustomerList}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.Name}"/></td>
    	<td><c:out value="${user.Address}"/></td>
    	<td><c:out value="${user.Phone}"/></td>
    	<td><c:out value="${user.Plumber}"/></td>
    	<td><c:out value="${user.Carpentar}"/></td>
    	<td><c:out value="${user.Painter}"/></td>
    	<td><c:out value="${user.Electrician}"/></td>
    </tr>
</c:forEach>
</table>
</body>
</html>