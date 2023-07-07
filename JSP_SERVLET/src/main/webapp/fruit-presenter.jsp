<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruits List</title>
</head>
<body>

	<h2>Fruits List are as follows :</h2>
	
	<c:forEach var="fruit" items = "${fruitsList }">
	<p> <c:out value = "${fruit }"></c:out></p>
	</c:forEach>
</body>
</html>