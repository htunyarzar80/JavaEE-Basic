<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>

	<%@include  file="header.jsp" %>

	
	<h2>Body Content</h2>
	<p>This is content in body.</p>
	<p>This is content in body.</p>
	<p>This is content in body.</p>
	<p>This is content in body.</p>
	<p>This is content in body.</p>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>