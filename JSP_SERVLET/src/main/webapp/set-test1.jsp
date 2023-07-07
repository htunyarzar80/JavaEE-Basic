<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Test 1</title>
</head>
<body>

	<h2>Set Scope Test - Set test 1 Page</h2>
	
	<p> PageVar = <c:out value="${pageVar }"></c:out></p>
	<p> SessionVar = <c:out value="${sessionVar }"></c:out></p>
	<p> ApplicationVar = <c:out value="${applicationVar }"></c:out></p>
	<p> RequestVar = <c:out value="${requestVar }"></c:out></p>

</body>
</html>