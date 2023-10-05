<%@page import="java.util.List"%>
<%@page import="com.kodNest.dbHandler.DataFetcher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin Page</title>
		<link rel="stylesheet" href="adminStyle.css">
		<script type="text/javascript" src="fun.js"></script>
		<style type="text/css">
			.info{
				background-color: #D6EEEE;
			}
		</style>
	</head>
	<body>
		<%
			List userLst=DataFetcher.fetchUserInfo();
			List pList=DataFetcher.fetchProdInfo();
		%>
		<div class="container">
			<div class="button_container">
				<button  class="active" id="btn1" onclick="cinfo()">View Customer Info</button>
				<button  class="active" id="btn2" onclick="finfo()">Add new Product</button>
				<button  class="active" id="btn3" onclick="pinfo()">Product Info</button>
			</div><br><br>
			<div id="cont" class="content_container" >
			
				<div id="info1" style="display: none;">
					<table border class="info">
						<thead>
							<tr>
								<th>Prod-Id</th>
								<th>Prod-Name</th>
								<th>Prod-Desc</th>
								<th>Prod-Price</th>
								<th>Prod-img</th>
							</tr>
						</thead>
						<tbody>
						<% 
							for(int i=0;i<pList.size();i++){
								String prod[]=((String)pList.get(i)).split(":");
						%>
						<tr>
							<td><%= prod[0] %> </td>
							<td><%= prod[1] %> </td>
							<td><%= prod[2] %> </td>
							<td><%= prod[3] %> </td>
							<td><img src="prodimage/<%= prod[4] %>" width="200px" height="200px"> <a href="prodimage/<%=prod[4] %>" >img</a></td>
						</tr>
						<%
							}
						%>
						</tbody>
					</table>
				</div>
				
			
				<div id="info2" style="display: none">
					<table border class="info">
						<thead>
							<tr>
								<th>USERNAME</th>
								<th>MAIL</th>
								<th>GENDER</th>
								<th>ADDRESS</th>
							</tr>
						</thead>
						<tbody>
						<% 
							for(int i=0;i<userLst.size();i++){
								String cust[]=((String)userLst.get(i)).split(":");
						%>
						<tr>
							<td><%= cust[0] %> </td>
							<td><%= cust[1] %> </td>
							<td><%= cust[2] %> </td>
							<td><%= cust[3] %> </td>
						</tr>
						<%
							}
						%>
						</tbody>
					</table>
				</div>
				
				
				
				<div id="info3"  style="display: none" >
					<form class="info" action="addp" method="post">
						<div class="form_group">
							<label for="prod_id">Product-id</label><br>
							<input type="text" id="pid" name="prod_id" required="required">
						</div>
						<div class="form_group">
							<label for="prod_name">Product-Name</label><br>
							<input type="text" id="pname" name="prod_name" required="required">
						</div>
						<div class="form_group">
							<label for="prod_desc">Product-description</label><br>
							<textarea rows="5" cols="40" name="prod_desc" id="pdesc"></textarea>
						</div>
						<div class="form_group">
							<label for="prod_price">Product-price</label><br>
							<input type="text" id="pprice" name="prod_price" required="required">
						</div>
						<div class="form_group">
							<label for="prod_img">Product-image</label><br>
							<input type="text" id="pimg" name="prod_img" required="required">
						</div>
						<div class="form_group">
							<input type="submit" value="submit" >				
					</form>
				</div>				
				
				
			</div>			
		</div>
	</body>
</html>