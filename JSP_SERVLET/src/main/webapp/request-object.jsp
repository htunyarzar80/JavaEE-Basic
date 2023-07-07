<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Object</title>
</head>
<body>
	<h2>Client Informations</h2>
	<%
	
		out.print("<p> User-Agent :"+request.getHeader("User-Agent")+"</p>");
		out.print("<p> Accept-Encoding :"+request.getHeader("Accept-Encoding")+"</p>");
		out.print("<p> Accept-Language :"+request.getHeader("Accept-Language")+"</p>");
		out.print("<p> Content-type :"+request.getHeader("User-Agent")+"</p>");
		out.print("<p> Content-Length :"+request.getHeader("User-Agent")+"</p>");
		out.print("<p> Accept-Date :"+request.getHeader("Accept-Date")+"</p>");
		out.print("<p> Port :"+request.getHeader("Port")+"</p>");
		out.print("<p> Port :"+request.getLocalPort()+"</p>");
		out.print("<p> Port :"+request.getLocalName()+"</p>");
		out.print("<p> Protocola :"+request.getProtocol()+("</p>"));
		out.print("<p> RequestUrl :"+request.getRequestURL()+("</p>"));
		out.print("<p> RequestUrl :"+request.getLocale()+("</p>"));
	%>

</body>
</html>