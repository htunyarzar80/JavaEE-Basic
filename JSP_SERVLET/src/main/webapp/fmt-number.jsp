<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="salary" value="2345.444444"></c:set>
	
	<fmt:parseNumber var="parseNumber1" value="${salary}" type="number" integerOnly="true"></fmt:parseNumber>
	<p>parseNumber1 :<c:out value="${parseNumber1 }"></c:out></p>
	
	<p>Format 1 :<fmt:formatNumber value="${salary }" groupingUsed="true"/></p>
	<p>Format 2 :<fmt:formatNumber value="${salary }" maxIntegerDigits="2" maxFractionDigits="2"/></p>
	<p>Format 3 :<fmt:formatNumber value="${salary }" minIntegerDigits="6" minFractionDigits="10"/></p>
	<p>Format 4 :<fmt:formatNumber value="${salary }" type="currency"/></p>
	<p>Format 5 :<fmt:formatNumber value="${salary }" type="percent"/></p>
	<p>Format 6 :<fmt:formatNumber value="${salary }" type="currency" currencyCode="JPY"/></p>
	<p>Format 7 :<fmt:formatNumber value="${salary }" pattern="###.###E0"/></p>
	
	<p>Format 9 :<fmt:formatNumber value="${salary }" pattern="##.##"/></p>
	
</body>
</html>