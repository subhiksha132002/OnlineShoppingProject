<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="min-height: 100vh">
	<div class="my-4 text-white text-center" style="font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("added".equals(msg)) {
	%>
	<h3 class="alert">Product added successfully!</h3>
	<%
	}
	%>
	<%
	if ("exist".equals(msg)) {
	%>
	<h3 class="alert">Product already exist in you cart! Quantity
		increased!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Something went wrong!!!Try again!!!</h3>
	<%
	}
	%>
	<div class="container">
		<div class="row" style="align-content:flex-start">
			<table class="table table-striped col-md-12 overflow-hidden">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Category</th>
						<th scope="col"><i class="fa fa-inr"></i> Price</th>
						<th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
						Connection conn = ConnectionProvider.getCon();
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery("select * from products where active='Yes'");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
						<td><a href="AddToCartAction.jsp?id=<%=rs.getString(1)%> ">Add
								to cart <i class='fas fa-cart-plus'></i>
						</a></td>
					</tr>
					<%
					}
					} catch (Exception e) {

					System.out.println(e);

					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>