<%@page import="dto.ItemDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
            body {
                background-color: rgb(221, 215, 162);
            }
            
            table {
                border: 3px solid #f1f1f1;
                background-color: rgb(168, 231, 219)
            }
            
            ,
            th,
            td {
                border-collapse: collapse;
            }
            
            th,
            td {
                padding: 15px;
            }
        </style>

</head>
<body>

<%@ include file="itemnavbar.jsp" %>
<%

  ItemDto dto=(ItemDto)request.getAttribute("myItem");
%>

<h1>Edit Item</h1>
<form action="edititem" method="post">
        Id:<input type="number" name="itemId" value="<%=dto.getId()%>" readonly="readonly">
		<br> 
		<br>
		Name:<input type="text" name="name" value="<%=dto.getName()%>">
		<br> 
		<br>
		Quantity:<input type="number" name="quantity" value="<%=dto.getQuantity()%>">
		<br> 
		<br>
		Cost:<input type="number" name="cost" value="<%=dto.getCost()%>">
		<br>
		<br> 
        Type:<input type="text" name="type" value="<%=dto.getType()%>">
		<br> 
		<br>
		<input type="submit" value="update item">
	</form>
</body>
</html>