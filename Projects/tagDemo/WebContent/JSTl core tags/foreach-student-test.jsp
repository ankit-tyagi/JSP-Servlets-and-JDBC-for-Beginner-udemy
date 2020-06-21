<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.tyagi.jsp.tagdemo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	//Just create some sample data... created by mvc  usually
	List<Student> data = new ArrayList();
	
	data.add(new Student("Ankit", "Tyagi", false));
	data.add(new Student("Ankur", "Tyagi", false));
	data.add(new Student("saloni", "Tyagi", false));
	data.add(new Student("vani", "Tyagi", true));
	data.add(new Student("Vanya", "Tyagi", true));
	
	pageContext.setAttribute("myStudents", data);
%>
<body>
	<table border="2">
		<tr>
			<th>First Name </th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td> ${tempStudent.firstName} </td>
				<td> ${tempStudent.lastName}  </td>
				<td> ${tempStudent.goldCustomer} </td>
			</tr>
		
		</c:forEach>
	</table>
</body>
</html>