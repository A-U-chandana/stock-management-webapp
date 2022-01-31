<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <%
	String email = (String)session.getAttribute("email"); 
	if(email == null) {
		response.sendRedirect("login.jsp");
	}
%>
<%@ include file="itemnavbar.jsp" %>
	<h1>Enter the user data</h1>
  
</body>
</html>