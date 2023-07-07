<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loading Java Resource</title>
</head>
<body>

	<h2>Loaded Java Resource</h2>
	
	<fmt:bundle basename="resources.FruitResource" prefix="fruit.">
		<p>Favorite Food: <fmt:message key="fav"></fmt:message></p>
		<p>Hate Food: <fmt:message key="hate"></fmt:message></p>
		<p>Love Food: <fmt:message key="lov"></fmt:message></p>
		<p>New Food: <fmt:message key="new"></fmt:message></p>
		<p>Strange Food: <fmt:message key="strange"></fmt:message></p>
		<p>Joy Food: <fmt:message key="joy"></fmt:message></p>
		
	</fmt:bundle>
	
</body>
</html>