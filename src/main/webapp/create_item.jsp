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
    
    table,
    th,
    td {
        border-collapse: collapse;
    }
    
    th,
    td {
        padding: 15px;
    }
    
    select {
        width: 170px;
        margin: 0px;
    }
    
    select:focus {
        min-width: 150px;
        width: auto;
    }
    
    form {
        border: 3px solid #f1f1f1;
        background-color: rgb(168, 231, 219)
    }
</style>
</head>
<body>

<%@ include file="itemnavbar.jsp" %>
<br>
<br>

<center>
    <h2>Item Form</h2>
</center>
<form action="createitem" method="post">
    <center>
        <table border="2" align="autofocus">
    </center>
    <br>
    <tr>
        <td><label for="name">Name:</label></td>
        <td><input type="text" id="name" name="name"></td>
    </tr>
    <tr>
        <td><label for="quantity">Quantity:</label></td>
        <td><input type="number" id="quantity" name="quantity"></td>
    </tr>
    <tr>
        <td><label for="cost">Cost:</label></td>
        <td><input type="number" id="cost" name="cost"></td>
    </tr>
    <tr>
        <td><label for="type">Type :</label></td>
        <td> <select name="type">
                <option value=" "> </option>
                <option value="Mobile" id="type ">Mobile</option>
                <option value="Tv" id="type ">Tv</option>
                <option value="Book" id="type ">Book</option>
            </select></td>
    </tr>
    </table>
    <br> <input type="submit" value="submit" style="color: rgb(255, 0, 0); background-color: rgb(107, 107, 233);">
</form>
</body>
</html>