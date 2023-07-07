<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Functions</title>
</head>
<body>
	<h2>Funtion Test</h2>
	
	
	<c:set var="str1" value="<hello><g>Hello Good Night</g></hello>"></c:set>
	<p> str1 : with xml escape = ${fn:escapeXml(str)}</p>
	<p> str1 : without xml escape= ${str1}</p>
	<p> test with default c:out = <c:out value="${str1 }"></c:out></p>
	<p> test with escape false c:out = <c:out value="${str1 }"  escapeXml="false"></c:out></p>

	<c:set var="favLang" value="Java,PHP,Python,Flutter,Kotlin,Swift"></c:set>
	
	<c:set var="favLangArray" value="${fn:split(favLang,',') }"></c:set>
	
	<ol>
		<c:forEach var="lang" items="${favLangArray}">
		 <li> <c:out value="${lang }"></c:out></li>
		
		</c:forEach>

	</ol>
	
	<c:set var="favLangRejoin" value="${fn:join(favLangArray,'*') }"></c:set>
	 	<p><c:out value="${favLangRejoin}"></c:out></p>
	
	<!-- 
	<p> Uppercase : ${fn:toUpperCase("My UpperCase Word")}</p>
	<p> Lowercase : ${fn:toLowerCase("My LowerCase Word")}</p>
	
	<p>Contain? : ${fn:contains("My name is blabla..","my")}</p>
	<p> StartWith?: ${ fn:startsWith("Hello World  I am here","hello")}</p>
	<p> EndWith?: ${ fn:endsWith("Hello World  I am here","here")}</p>
	<p> SubString: ${ fn:substring("Are you crazy,Man?",8,13)}</p>
	<p> SubStringAfter: ${ fn:substringAfter("Are you crazy,Man?","you")}</p>
	<p> SubStringBefore: ${ fn:substringBefore("Are you crazy,Man?","you")}</p>
	<p> Length: ${ fn:length("Are you crazy,Man?")}</p>
	<p> IndexOf: ${ fn:indexOf("Are you crazy,Man?","Man")}</p>
	 -->
</body>
</html>