<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>News Home</title>
</head>
<body>

	<%
		String favNews="Economics";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies !=null){
		for(final Cookie cookie : cookies){
			if(cookie.getName().equals("jspservlet.favNews")){
				favNews = cookie.getValue();
				
				break;
			}
		}
		}
	%>
	<h2> <%= favNews %>New Home Page</h2>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	<p>Features News for :<b><%= favNews %></b></p>
	

	<p>
	<a href="cookie-form.html">Go to Form</a>
	</p>
	
	

</body>
</html>