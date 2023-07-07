<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Scope</title>
</head>
<body>

	<h2>Set Scope Test</h2>
	<c:set var="pageVar" value="This is PageVar Value" scope="page" />
	<c:set var="sessionVar" value="This is SessionVar Value" scope="session" />
	<c:set var="applicationVar" value="This is ApplicationVar Value" scope="application" />
	<c:set var="requestVar" value="This is requestVar Value" scope="request" />
	
	<p> PageVar = <c:out value="${pageVar }"></c:out></p>
	<p> SessionVar = <c:out value="${sessionVar }"></c:out></p>
	<p> ApplicationVar = <c:out value="${applicationVar }"></c:out></p>
	<p> RequestVar = <c:out value="${requestVar }"></c:out></p>
	
	<jsp:forward page="set-test1.jsp"></jsp:forward>
	
	<a href="set-test1.jsp" target="_blank">Other Page</a>

</body>
</html>