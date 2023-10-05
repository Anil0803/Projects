<%@page import="java.util.List"%>
<%@page import="com.kodNest.dbHandler.DataFetcher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Home Page</title>
		<style>
				.blink{
					width:200px;
					height: 50px;
					padding: 15px;	
					text-align: center;
					line-height: 50px;
				}
				span{
					font-size: 40px;
					font-family: serif;
					color: gold;
					animation: blink 1s linear infinite;
				}
				@keyframes blink{
					0%{opacity: 0;}
					50%{opacity: .5;}
					100%{opacity: h2;}
				}			
				h1{
				padding-top: 40px;
				}
				p{
					padding-top: 60px;
					padding-bottom: 10px;
				}
				#head{
				padding-left:10%;
				display: flex;
				align-items:center;
				height: 120px;
				color: brown;
				}
				#foot{
					margin-top: 60px;
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
					width:48%;
					padding-top:15px;
					padding-bottom:15px;
					margin-top:10px;
					margin-bottom: 10px;			
				}
				.column2{
					background-color:lightyellow;
					border: solid black;
					text-align:center;
					width:48%;
					padding-bottom:15px;
					margin-top:10px;
					margin-bottom: 10px;
				}
				input[type="submit"]
				{
					padding: 7px;
					background-color: green;
				}
				#img1{
				margin-left: 65%;
				margin-top:50px;
				}
				#img2{
					padding-right: 10px;
				}
		</style>
	</head>
	<body bgcolor="powderblue">
		<% List iList=DataFetcher.fetchProdInfo(); %>
		<div  style="background-color: grey">
			<div id="head">
				<a  id="img2" href="login.jsp"><img src="prodimage/logout.jpg" alt="Go To Cart" height="40px" width="40px" id="image"></a>
				<h1 class="blink"><span>Anil's Shop</span></h1>
				<p id="foot">Hunt the Style</p>
				<a  id="img1" href="cart.jsp"><img src="prodimage/cart.webp" alt="Go To Cart" height="40px" width="40px" id="image"></a>
			</div>
		</div>
		<div class="container">
		<% 
			String item[]=null;
			for (int i = 0; i < iList.size(); i++) { 
				String idet[]=((String)iList.get(i)).split(":");
		%>
		<% if (i % 2 == 1) { %>
		<div class="column1">
			<section id="product">
					<img src="prodimage/<%= idet[4] %>" alt="image" height="200px" width="200px"><br><br>
					<b><%= idet[1] %></b><br><br>
					<b><%= idet[2] %></b><br><br>
					<b>Rs.<%= idet[3] %></b><br><br>
					<form method="post" action="add-to-cart">
						<input type="hidden" name="prod_Id" value="<%= Integer.parseInt(idet[0])%>">
						<input type="submit" value="Add to Cart">
					</form>
			</section>		
		</div>	
		<% } else { %>
		<div class="column2">
			<section id="product">
					<img src="prodimage/<%= idet[4] %>" alt="image" height="200px" width="200px"><br><br>
					<b><%= idet[1] %></b><br><br>
					<b><%= idet[2] %></b><br><br>
					<b>Rs.<%= idet[3] %></b><br><br>
					<form method="post" action="add-to-cart">
						<input type="hidden" name="prod_Id" value="<%= Integer.parseInt(idet[0])%>">
						<input type="submit" value="Add to Cart">
					</form>
			</section>		
		</div>
		<% } %>
		<% 
			} 
		%>
	</div>
	</body>
</html>