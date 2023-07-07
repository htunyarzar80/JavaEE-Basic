<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forward Action</title>
</head>
<body>

	<jsp:forward page="cookie-response.jsp">
		<jsp:param value="Football" name="favNews"/>
	</jsp:forward>

</body>
</html>