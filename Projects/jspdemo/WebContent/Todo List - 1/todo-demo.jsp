<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- create html form -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem">
	
	<input type="submit" value="submit">
</form>
<br>
Item entered: <%= request.getParameter("theItem") %>

<!-- add new item to todo list -->
<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	if(items == null)
	{
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	String theItem = request.getParameter("theItem");
	if(theItem != null)
	{
		items.add(theItem);
	}

%>


<!-- display all to do item from session -->
<br> <br> 
<ol>
<%
	for(String temp : items)
	{
		out.print("<li>"+temp+"</li>");
	}
%>
</ol>


<%= session.getId() %>




</body>
</html>