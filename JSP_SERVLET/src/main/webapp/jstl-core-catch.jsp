<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Catch</title>
</head>
<body>
	<h2>JSTL Catch Test</h2>
	
	<c:set var="amount" value="${2000 }"></c:set>
	
	<c:catch var="error">
	
		<c:out value="${'Amount is'+amount }"></c:out>
	
	</c:catch>
	
	<c:out value="${error }"></c:out>
</body>
</html>