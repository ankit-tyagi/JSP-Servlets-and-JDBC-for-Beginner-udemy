<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test file</title>
</head>
<body>
<c:set var="stuff" value="<%= new java.util.Date()%>"></c:set>

Time on the server is ${stuff}

</body>
</html>