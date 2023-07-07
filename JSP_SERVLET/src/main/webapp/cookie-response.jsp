<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookie Response</title>
</head>
<body>

	<%
		String favNews = request.getParameter("favNews");
		Cookie cookie= new Cookie("jspservlet.favNews",favNews);
		
		cookie.setMaxAge(60*60*24*365);
		
		response.addCookie(cookie);
		
		out.print("<h2> Your favorite News :"+ favNews +"is added into cookie");
	%>
	<a href="cookie-home.jsp" target="_blank">Check Here</a>

</body>
</html>