<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriptlet</title>
</head>
<body>

	<ol>
		<%
		List<String> fruits = Arrays.asList(
				"apple","mango","banana","Papya","pineapple","kiwi","Melon"
				);
		
			for(String fruit : fruits){
				out.print("<li>" + fruit + "</li>");
			}
		%>
		
	</ol>


	<%-- 
	<%
	int day = 3;
	String result = "";

	switch (day) {
	case 1:
		result = "Monday";
		break;
	case 2:
		result = "Tueday";
		break;
	case 3:
		result = "Wednesday";
		break;
	case 4:
		result = "Thursday";
		break;
	case 5:
		result = "Friday";
		break;
	case 6:
		result = "Sunday";
		break;
	case 7:
		result = "Saturday";
		break;
	default:
		result = "Invalid Value";
		break;
	}
	;

	out.print("<h1> Result =" + result + "</h1>");
	%>
	--%>

	<%-- 
	<p>
	<%
		for(int i =1;i<=100;i++){
			out.println(i+"</br>");
		}
	
	%>
	
	</p>
	--%>
 	<%-- 
	<%
		for(int i =1;i<=100;i++){
			out.print("<p>Count : <b>"+i+"</b></p>");
		}
	
	%>
	--%>


</body>
</html>