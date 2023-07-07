<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MultiLanguage App</title>
</head>
<body>
	<c:set var="locale" value="${not empty param.locale? param.locale : pageContext.request.locale }"></c:set>
	<fmt:setLocale value="${locale }"/>
	<fmt:setBundle basename="i18N_resource.MyLanguage"/>

	<a href="i18n-app.jsp">English</a>
	<a href="i18n-app.jsp?locale=fr_FR">French</a>
	<a href="i18n-app.jsp?locale=de_De">German</a>
	<a href="i18n-app.jsp?locale=es_ES">Spanish</a>
	
	<ul>
		<li><fmt:message key="nav.home" /></li>
		<li><fmt:message key="nav.aboutus" /></li>
		<li><fmt:message key="nav.products" /></li>
		<li><fmt:message key="nav.contact" /></li>
		<li><fmt:message key="nav.login" /></li>

	</ul>

</body>
</html>