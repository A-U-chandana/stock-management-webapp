<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="itemnavbar.jsp" %>
<form action="searchitem">


	Name <input type="text" placeholder="name" name="Name" value=""required="required">
	type       <td> <select name="type">
                <option value=" ">Choose item</option>
                <option value="Mobile" >Mobile</option>
                <option value="Tv" >Tv</option>
                <option value="Book" >Book</option>
            </select></td>
            
            <input type="submit" value="submit"> 
</form>
</body>
</html>