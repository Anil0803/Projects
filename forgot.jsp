<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 	p{
 	padding-left: 30%;
 		color: black;
 	}
 	#p1{
 	
 		padding-top:80px;
 		padding-left: 30%;
 		color: black;
 	}
 	#f{
 		background-color: powderblue;
 		margin-top: 150px;
 		margin-left:30%;
 		width: 40%;
 		padding-bottom: 20px;
 	}
 	input[type="submit"]{
 		padding: 8px;
 		background-color: orange;
 		margin: 10%;
 		margin-top:5%;
 		margin-left: 40%;
 	}
 
 </style>
</head>
<body bgcolor="silver">
	<div id="f">
		<b><p id="p1">You can Reset Your Password</p></b>
		<b><p>By Clicking Down</p></b><br><br>
		<form method="post" action="for">
			<b >User-Mail:</b>
			<input type="email" name="umail" placeholder="mail" style="width: 40%;padding: 10px; margin-left: 10%"><br><br>
			<b >New-Password:</b>
			<input type="password" name="pwd"  placeholder="password" style="width: 40%;padding: 10px; margin-left: 4%"><br>
			<input type="submit" value="Reset Password">
		</form>
	</div>
</body>
</html>