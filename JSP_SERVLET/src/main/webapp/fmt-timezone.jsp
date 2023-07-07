<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FMT Time Zone</title>
</head>
<body>
	<fmt:setTimeZone value="Europe/London"/>

	<c:set var="today" value="<%= new Date() %>"></c:set>
	
	<p> Original Date: <fmt:formatDate value ="${today }" type="both" timeStyle="long" dateStyle="medium"/></p>
	
	<fmt:timeZone value="GMT-8">
		<p>GMT-8 Date: <fmt:formatDate value ="${today }" type="both" timeStyle="long" dateStyle="medium"/></p>
	
	</fmt:timeZone>
	
	<fmt:timeZone value="Asia/Tokyo">
		<p>Asia/Tokyo Date: <fmt:formatDate value ="${today }" type="both" timeStyle="long" dateStyle="medium"/></p>
	
	</fmt:timeZone>
</body>
</html>