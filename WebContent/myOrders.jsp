<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body style="min-height: 100vh">
	<div class="text-white text-center my-4" style="font-size: 30px;">
		My Orders <i class='fab fa-elementor'></i>
	</div>
	<div class="container-fluid mt-4">
		<div class="row" style="align-content: flex-start">
			<table class="table table-striped col-md-12 overflow-hidden">
				<thead>
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">Product Name</th>
						<th scope="col">category</th>
						<th scope="col"><i class="fa fa-inr"></i> Price</th>
						<th scope="col">Quantity</th>
						<th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
						<th scope="col">Order Date</th>
						<th scope="col">Expected Delivery Date</th>
						<th scope="col">Payment Method</th>
						<th scope="col">Status</th>

					</tr>
				</thead>
				<tbody>
					<%
					int sno = 0;
					try {
						Connection conn = ConnectionProvider.getCon();
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt
						.executeQuery("SELECT * FROM CART INNER JOIN PRODUCTS ON CART.product_id=PRODUCTS.id WHERE CART.email='"
								+ email + "' and CART.orderDate is not NULL");
						while (rs.next()) {
							sno = sno + 1;
					%>
					<tr>
						<td>
							<%
							out.println(sno);
							%>
						</td>
						<td><%=rs.getString(17)%></td>
						<td><%=rs.getString(18)%></td>
						<td><i class="fa fa-inr"></i><%=rs.getString(19)%></td>
						<td><%=rs.getString(3)%></td>
						<td><i class="fa fa-inr"></i> <%=rs.getString(5)%></td>
						<td><%=rs.getString(11)%></td>
						<td><%=rs.getString(12)%></td>
						<td><%=rs.getString(13)%></td>
						<td><%=rs.getString(15)%></td>
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