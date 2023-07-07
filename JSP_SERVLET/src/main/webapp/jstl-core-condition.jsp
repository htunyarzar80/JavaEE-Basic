<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Condition</title>
</head>
<body>
	<c:set var="color" value="blue"></c:set>
	<c:choose>
	
		<c:when test="${color eq 'blue' }">
		<h2> value="Blue shirt is 2000"</h2>
		</c:when>
		
		<c:when test="${color eq 'red' }">
		<h2><c:out value="Red shirt is 2000"></c:out></h2>
		</c:when>
		
		<c:when test="${color eq 'green' }">
		<h2><c:out value="Green shirt is 2000"></c:out></h2>
		</c:when>
	
	</c:choose>
	
	<!-- 
	<c:set var="amount" value="${2000}"></c:set>
	
	<c:if test="${amount gt 1000 and  amount lt 2000}">
		<h2><c:out value="Yay...5% discount"></c:out></h2>
	</c:if>
	
	<c:if test="${amount ge 2000 }">
		<h2><c:out value="Yay...10% discount"></c:out></h2>
	</c:if>
	
	<c:if test="${amount lt 1000 }">
		<h2><c:out value="OH!....NO...no  ..discount"></c:out></h2>
	</c:if>
	 -->

</body>
</html>