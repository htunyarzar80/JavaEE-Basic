<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression</title>
</head>
<body>

	<p>today:<b><%= LocalDate.now()%> </b></p>
	
	<p>50+40:<b><%= 50+40%> </b></p>
	
	<p>sqrt of 25:<b><%= Math.sqrt(25)%> </b></p>
	
	<p>Uppercase:<b><%= new String("This is test").toUpperCase()%> </b></p>
	
	

</body>
</html>