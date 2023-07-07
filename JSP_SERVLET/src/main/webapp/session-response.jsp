<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Response</title>
</head>
<body>

	<%
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		
		session.setAttribute("user", username +":"+password);
		session.setMaxInactiveInterval(60*60);
		
		out.print("<h1>Your Login Credentials are stored in session</h1>");
		out.print(username);
		out.print(password);
	%>

</body>
</html>