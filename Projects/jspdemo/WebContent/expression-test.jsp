<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= new Date() %>

convert the string <%= new String("something here").toUpperCase() %>

<br><br>
expression <%= 25+45 %>

<br><br>
is true or false : 25 == 25 <%= 25 == 25 %>

</body>
</html>