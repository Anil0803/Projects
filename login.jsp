<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
<style type="text/css">
	#forgot{
		text-align: right;
	}
</style>
</head>
<body bgcolor="cream">
	<center><h2>Log in here to shop</h2></center>
	<div class="log">
		<form id="login" action="log" method="post">
			<label><b>USERNAME</b></label><br>
			<input type="text" placeholder="username" name="uname" required="required"><br><br>
			<label><b>PASSWORD</b></label><br>
			<input type="password" placeholder="password" name="pass" required="required"><br><br>
			<input type="submit" value="LogIn"><br>
			<a href="forgot.jsp"><p id="forgot">forgot password?</p></a>
			New User?<a href="register.jsp">register here</a>
		</form>
	</div>
</body>
</html>