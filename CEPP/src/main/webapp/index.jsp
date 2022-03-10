<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> <%=request.getAttribute("message")%> </h1>
<table border="1">
	<tr>
		<th>ID</th>
		<th>Email</th>
		<th>Password</th>
	</tr>
	<c:forEach items="${userList}" var="user">
	<tr>
    	<td><c:out value="${user.id}"/></td>
    	<td><c:out value="${user.email}"/></td>
    	<td><c:out value="${user.password}"/></td>
    </tr>
</c:forEach>
</table>

<p>hi moni!! i am tani.</p>
</body>
</html>