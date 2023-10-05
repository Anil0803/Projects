<%@page import="java.util.Arrays"%>
<%@page import="com.kodNest.product.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<style>
				#main{
					background-color: powderblue;
				}
				#img1{
					margin-right: 90%;
					padding-bottom: 20px;
				}
				#head{
					text-align:center;
					background-color: pink;
					border: solid gold;
					margin-left:100px;
					margin-right:100px;
				}
				.container {
					display: flex;
					flex-wrap: wrap;
					justify-content: space-between;
				}
				.column1 {
					background-color:lightyellow;
					border: solid black;
					text-align:center;
					width:40%;
					padding-top:15px;
					padding-bottom:15px;
					margin-top:10px;
					margin-bottom: 10px;
					margin-left:100px;			
				}
				.column2{
					background-color:lightyellow;
					border: solid black;
					text-align:center;
					width:40%;
					padding-top:15px;
					padding-bottom:15px;
					margin-top:10px;
					margin-right:100px;
					margin-bottom: 10px;
				}
				input[type="submit"]
				{
					padding: 7px;
					background-color: green;
				}
				#details{
					background-color:gray;
					border: solid gold;
					padding-left: 5%;
					padding-top: 30px;
					padding-bottom: 20px;
					margin-top:20px;
					margin-left:100px;
					margin-right:100px;
				}
				#btn-ord{
					width: 35%;
					padding: 10px;
					margin-top:20px;
					margin-left: 30%;
					border-radius: 20px;
					background-color: green;
				}
		</style>
		<script type="text/javascript">
			function fun() {
				window.location.href="order.jsp"
			}
		</script>
</head>
<body bgcolor="powderblue">
	<div id="main">
	<div id="head">
		<p style="font-size:40px;">Cart</p>
		<a  id="img1" href="home.jsp"><img src="prodimage/back.png" alt="Go To Cart" height="40px" width="40px" id="image"></a>
	</div>
	<% try{ %>
	<%
		Cart cart=(Cart)session.getAttribute("cart");
		List<Product> items=cart.getItem();
	%>

		<div class="container">
			<% 
				Product p;
				for(int i=0;i<items.size();i++){
					 p=items.get(i);
			%>
			<% if (i % 2 == 0) { %>
			<div class="column1">
			<form method="post" action="remove-from-cart">
				<header style="padding-left: 90%"><button><img src="prodimage/delete.jpg" height="25px" width="25px"></button></header>
				<input type="hidden" name="pid" value="<%= p.getPpid() %>">
			</form>
				<img src="prodimage/<%= p.getPimage() %>" alt="image" height="200px" width="200px"><br><br>
				<b><%= p.getPname() %></b><br><br>
				<b><%= p.getPdesc() %></b><br><br>
				<b>Rs .<%= p.getPprice() %>.00</b><br>
			</div>	
			<% } else { %>
			<div class="column2">
			 <form method="post" action="remove-from-cart">
				<header style="padding-left: 90%"><button><img src="prodimage/delete.jpg" height="25px" width="25px"></button></header>
				<input type="hidden" name="pid" value="<%= p.getPpid() %>">
			</form>
				<img src="prodimage/<%= p.getPimage() %>" alt="image" height="200px" width="200px"><br><br>
				<b><%= p.getPname() %></b><br><br>
				<b><%= p.getPdesc() %></b><br><br>
				<b>Rs .<%= p.getPprice() %>.00</b><br>
				
			</div>
			<% } 
			}
			%>
	</div>
	<div id = "details" >
		<b style="font-size:20px">Total No.of Products =  </b><b style="font-size:25px;"><%= items.size() %></b><br><br>
		<b style="font-size:20px">Total = Rs. </b><b style="font-size:25px"><%= cart.getTotal()%></b><br>
		<button id="btn-ord" onclick="fun()"><b>Place Order</b></button>
	</div>
	<%}catch(Exception e){
		}%>
	</div>
</body>
</html>