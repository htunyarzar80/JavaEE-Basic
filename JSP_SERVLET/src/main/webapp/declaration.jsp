<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Declaration</title>
</head>
<body>
		<%!
		
		double pi=3.14;
			
		double areaOfCircle(double r){
			return pi*r*r;
		}
		
		double radius(double d){
			return d/2;
		}
		
		%>
		
		<%
		double d = 10.6;
		
		double r = radius(d);
		
		double area = areaOfCircle(r);
		
		out.print("<h1> Area = "+area+"</h1>");
		
		%>
		<h1>
		
		Area =\9<%= areaOfCircle(radius(25.5)) %></h1>
		
</body>
</html>