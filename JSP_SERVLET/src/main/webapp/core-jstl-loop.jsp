<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core JSTL Loop</title>
</head>
<body>

	<%
		List<String> fruitList = Arrays.asList(
				"apple","banana","mango","orange","pineapple");
	
		pageContext.setAttribute("fruitList",fruitList);
	%>
	<!--  
	<ol>
	<c:forEach items="${fruitList}" var="fruit" begin="1" end="3" step="1">
		<li><c:out value="${fruit}"></c:out></li>
	</c:forEach>
	</ol>
	-->
	
	<!--  
	<ol>
	<c:forEach items="${fruitList}" var="fruit">
		<li><c:out value="${fruit}"></c:out></li>
	</c:forEach>
	</ol>
	-->
	<!--  
	<c:forEach var="index" begin="1" end="100" step="30">
	<p>
	Count :<c:out value="${index}"></c:out>
	</p>
	</c:forEach>
	-->
	
	<c:forTokens items="Myanmar,Korea,Japan,USA,UK" delims="," var="country">
		<p><c:out value="${country }"></c:out></p>
	
	</c:forTokens>
	
	
</body>
</html>