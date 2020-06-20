<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation </title>
</head>
<%
	//read form data
	String favlanguage = request.getParameter("favoriteLanguage");
	out.println("before encoding : " + favlanguage);
	favlanguage = URLEncoder.encode(favlanguage, "UTF-8");
	out.print("after encoding : " + favlanguage);
	
	//create the cookies
	Cookie thecookie = new Cookie("myAppfavoriteLanguage",favlanguage);
	
	//set the lifespam of cookie
	thecookie.setMaxAge(60*60*1);
	
	//send the cookie to browser
	response.addCookie(thecookie);
%>
<body>
 Thanks we set your fav language to : ${param.favoriteLanguage}
 <br><br>
 
 <a href="cookies-homepage.jsp">return to homepage.</a>
</body>
</html>