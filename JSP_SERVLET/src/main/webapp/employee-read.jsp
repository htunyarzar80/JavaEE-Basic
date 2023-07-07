<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Read</title>
</head>
<body>
	<p>FirstName : ${param.firstname }</p>
	<p>LastName : ${param.lastname }</p>
	<p>Email : ${param.email }</p>

	<p>
		<%
		String password = request.getParameter("password");
		if (password.length() < 8)
			out.print("Password :" + password + "(too short)");
		else
			out.print("Password :" + password + "(strong)");
		%>
	</p>

	<p>
		Role:
		<%=request.getParameter("role")%>
	</p>
	Fields:
	<br>
	<ol>

		<%
		String[] Fields = request.getParameterValues("Fields");
		for (String Field : Fields)
			out.print("<li>" + Field + "</li>");
		%>
	</ol>
	<p>Gender: ${param.gender }</p>
	<p>Description: ${param.description }</p>

</body>
</html>