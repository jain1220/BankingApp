<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
body{
    background-color: beige;
}
input{
    margin-left: 5px;
    margin-top: 30px;
}
label{
    margin-left: 10px;
}

</style>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN SIGNUP</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<form action="/BankingApp/signup" method ="post">
         <label>enter your name</label>
		<input type="text" name="name"> <br>
		
		<label>enter your email</label>
		<input type="email" name="email"><br>
		<label>enter your pasword</label>
		<input type="password" name="password">
	
		<input type="submit" name="">
	</form>

</body>
</html>