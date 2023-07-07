<%@page import="utility.FindMinMax"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Max Min Finder</title>
</head>
<body>

	<h2>Max Value of 30,40,20,15 is <%= FindMinMax.max(30,40,20,15) %></h2>
	
	<%
	
		String str1= "Apple";
		String str2= "Orange";
		String str3= "Banana";
		String str4= "Mango";
	
		String result = FindMinMax.min(str1, str2, str3, str4);
			
		out.print("<h2> Min Value of: "+str1+","+str2+","+str3+","+str4+"is "+result);
	%>
	
</body>
</html>