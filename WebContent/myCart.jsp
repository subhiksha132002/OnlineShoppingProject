<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="min-height: 100vh">
	<div class="text-white text-center my-4" style="font-size: 30px;">
		My Cart <i class='fas fa-cart-arrow-down'></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("notPossible".equals(msg)) {
	%>
	<h3 class="alert">There is only one Quantity! So click on remove!</h3>
	<%
	}
	%>
	<%
	if ("inc".equals(msg)) {
	%>
	<h3 class="alert">Quantity Increased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("dec".equals(msg)) {
	%>
	<h3 class="alert">Quantity Decreased Successfully!</h3>
	<%
	}
	%>
	<%
	if ("remove".equals(msg)) {
	%>
	<h3 class="alert">Product Successfully Removed!</h3>
	<%
	}
	%>
	<div class="container mt-4">
		<div class="row" style="align-content: flex-start">
			<table class="table table-striped col-md-12 overflow-hidden">
				<thead style="border-radius: 25px;">
					<%
					int total = 0;
					int sno = 0;
					try {
						Connection conn = ConnectionProvider.getCon();
						Statement stmt = conn.createStatement();
						ResultSet rs1 = stmt.executeQuery("SELECT SUM(total) FROM CART WHERE email='" + email + "' and address is NULL");
						while (rs1.next()) {
							total = rs1.getInt(1);
						}
					%>
					<tr>
						<th scope="col" class="text-center">Total: <i
							class="fa fa-inr"></i> <%
 out.println(total);
 %></th>
						<%
						if (total > 0) {
						%><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed
								to order</a></th>
						<%
						}
						%>
					</tr>
				</thead>
				<thead>
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">Product Name</th>
						<th scope="col">Category</th>
						<th scope="col"><i class="fa fa-inr"></i> price</th>
						<th scope="col">Quantity</th>
						<th scope="col">Sub Total</th>
						<th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
					</tr>
				</thead>
				<tbody>
					<%
					ResultSet rs = stmt
							.executeQuery("SELECT *FROM PRODUCTS INNER JOIN CART ON PRODUCTS.id = CART.product_id and CART.email='" + email
							+ "' and CART.address is NULL");
					while (rs.next()) {
					%>
					<tr>
						<%
						sno = sno + 1;
						%>
						<td>
							<%
							out.println(sno);
							%>
						</td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
						<td><a
							href="IncDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i
								class='fas fa-plus-circle'></i></a> <%=rs.getString(8)%> <a
							href="IncDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i
								class='fas fa-minus-circle'></i></a></td>
						<td><i class="fa fa-inr"></i><%=rs.getString(10)%></td>
						<td><a href="RemoveFromCart.jsp?id=<%=rs.getString(1)%>">Remove
								<i class='fas fa-trash-alt'></i>
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