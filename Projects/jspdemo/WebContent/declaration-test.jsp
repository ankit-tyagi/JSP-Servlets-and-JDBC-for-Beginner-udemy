<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	String makeItLower(String data)
	{
		return data.toLowerCase();
	}

	String makeItUpper(String data)
	{
		return data.toUpperCase();
	}
%>

lower, or make THIS INTO LOWER: <%= makeItLower("THIS INTO LOWER") %>
<br>
<br>
upper, or make this into upper: <%= makeItUpper("this into upper") %>

</body>
</html>