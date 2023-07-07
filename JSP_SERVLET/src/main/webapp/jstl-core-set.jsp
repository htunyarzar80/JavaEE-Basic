<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set/Scope</title>
</head>
<body>

	<c:set var="firstname" value="Kyaw" scope="page"/>
	<c:set var="lastname" value="Aung" scope="page"/>
	
	<c:set var="fullname" value="${firstname }${lastname }"/>
	
	<h2> <c:out value="${fullname }"></c:out></h2>

</body>
</html>