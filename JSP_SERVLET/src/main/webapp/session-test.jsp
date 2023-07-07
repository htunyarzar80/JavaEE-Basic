<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Test</title>
</head>
<body>
	<h1>Testing your session is valid or not</h1>

	<%
		String user =(String)session.getAttribute("user");
	
		if(user!=null){
			out.print("<p> Your credentials are = "+user+"</p>");
			out.print("<p> Session Id = "+ session.getId()+"</p>");
		}else{
			out.print("<p> Your session is expired.Please Login Again!</p>");
		}
	%>
</body>
</html>