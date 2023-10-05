<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body bgcolor="cream">
	<h2 align="Center">Register Here</h2>
	<div class="register">
		<form method="post" action="reg"  >
			<label><b>USERNAME</b></label><br>
			<input type="text" name="uname" placeholder="username" required="required"><br><br>
			<label><b>MAIL</b></label><br>
			<input type="email" name="mail" placeholder="E mail" required="required"><br><br>
			<label><b>PASSWORD</b></label><br>
			<input type="password" name="pass" placeholder="password" required="required"><br><br>
			<label><b>Gender</b></label><br>
			<input type="radio" name="gender" value="male">Male
			<input type="radio" name="gender" value="female">Female
			<input type="radio" name="gender" value="others">Others<br><br>
			<label><b>Address</b></label><br>
			<label >
			<textarea rows="3" cols="30" name="add" required="required"></textarea>
			</label><br><br>
			<input type="submit" value="Register"><br><br>
			already registered?<a href="login.jsp">login/sign in</a>
		</form>
	</div>
</body>
</html>