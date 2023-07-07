<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Remove</title>
</head>
<body>

	<c:set var="amount" value="${2000 }" scope="page"></c:set>
	
	<h2>Before Remove Tag</h2>
	<p><c:out value="${amount }">Amount:</c:out></p>
	
	<c:remove var="amount" />
	
	<h2>After Remove Tag</h2>
	<p><c:out value="${amount }">Amount:</c:out></p>

</body>
</html>