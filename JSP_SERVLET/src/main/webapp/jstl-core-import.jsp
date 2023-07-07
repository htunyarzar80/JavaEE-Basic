<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Import</title>
</head>
<body>

	<h2>My Tube</h2>
	
	<c:import url="request-object.jsp" var="data"></c:import>
	
	<c:out value="${data}"></c:out>

</body>
</html>