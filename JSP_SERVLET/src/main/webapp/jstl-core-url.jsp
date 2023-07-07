<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core URL</title>
</head>
<body>

	<c:url var="sessionURL" value="session-response.jsp" scope="page">
		<c:param name="username" value ="kyawGyi"></c:param>
		<c:param name="password" value ="123456"></c:param>
	</c:url>
	<p><c:out value="${sessionURL }"></c:out></p>
	<a href="${sessionURL }">GO to Session Response</a>

</body>
</html>