<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/print-tag.tld" prefix="mc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Tag</title>
</head>
<body>
	<h1>Testing Custom Tag </h1>
	<mc:Print text="This is value from text attr" style="uppercase">
	
	</mc:Print>
	<mc:Print text="This is value from text attr" style="lowercase">
	
	</mc:Print>
	<mc:Print text="This is value from text attr" style="bold">
	
	</mc:Print>
	<mc:Print text="This is value from text attr" style="emphasize">
	
	</mc:Print>
	

</body>
</html>