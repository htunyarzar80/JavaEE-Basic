<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="stringDate" value="12-03-2023"></c:set>
	<c:set var="today" value="<%= new Date() %>"></c:set>
	
	
	<fmt:parseDate var="parsedDate" value="${stringDate }" pattern="dd-MM-yyyy"></fmt:parseDate>
	<p> ParsedDate : <c:out value="${parsedDate }"></c:out></p>

	<p> OriginalDate : <c:out value="${today }"></c:out></p>
	<p> Date : <fmt:formatDate value="${today }" type="date"/></p>
	<p> Time : <fmt:formatDate value="${today }" type="time"/></p>
	<p> DateTime : <fmt:formatDate value="${today }" type="both"/></p>
	
	<p> Time ShortStyle : <fmt:formatDate value="${today }" type="time" timeStyle="short"/></p>
	<p> Time MediumStyle : <fmt:formatDate value="${today }" type="time" timeStyle="medium"/></p>
	<p> Time LongStyle : <fmt:formatDate value="${today }" type="time" timeStyle="long"/></p>
	
	<p> Time ShortStyle : <fmt:formatDate value="${today }" type="date" timeStyle="short"/></p>
	<p> Time MediumStyle : <fmt:formatDate value="${today }" type="date" timeStyle="medium"/></p>
	<p> Time LongStyle : <fmt:formatDate value="${today }" type="date" timeStyle="long"/></p>
	
</body>
</html>