<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>portal</title>
</head>
<%
	String favLang = "java";

	//get the cookies from the browser
	Cookie[] theCookies = request.getCookies();
	
	//find our fav lang cookie
	
	if(theCookies != null)
	{
		for(Cookie tempCookie : theCookies)
		{
			if("myAppfavoriteLanguage".equals(tempCookie.getName())) 
			{
				favLang = URLDecoder.decode(tempCookie.getValue());
				break;
			}
		}
	}
%>

<body>
<h3> new data on lang <%= favLang %> </h3>
<ul>
<li> asd asd <li>
</ul>
<br><br>
<a href="cookies-personalize-form.html">personalize the form yourself</a>

</body>
</html>