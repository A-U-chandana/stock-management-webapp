<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        background-color: rgb(200, 200, 200);
    }
    
    td {
        font-size: large;
    }
</style>
</head>
<body>
<h2>Enter Valid Credentials</h2><br><br>
<form action="login" method="post">

		Email : <input type="text" name="email"> </br></br>
		Password : <input type="password" name="password"> </br></br>

		 <input type="submit" value="Login">

	</form>
</body>
</html>