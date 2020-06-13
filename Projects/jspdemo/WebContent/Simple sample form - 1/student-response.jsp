<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation Title</title>
</head>
<body>
Congurulations for successful submition  ${param.firstName} ${param.lastName}
<br><br>
country is : ${param.country }
<br><br>
Language is : ${param.language }
<br><br>
Likable Language are : <%
	String[] langs = request.getParameterValues("language1");
	if (langs != null) {
		for(String temp : langs){
			out.println(temp + "<br>");
		}
	}
%>
</body>
</html>