<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/addressPaymentForOrder.css" />
<!-- <link rel="stylesheet" href="css/bill.css"> -->
<title>Bill</title>
</head>
<body>
	<%
	String email = session.getAttribute("email").toString();
	try {
		int total = 0;
		int sno = 0;
		Connection conn = ConnectionProvider.getCon();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT SUM(total) FROM CART WHERE email='" + email + "'and status='bill'");
		while (rs.next()) {

			total = rs.getInt(1);
		}
		ResultSet rs2 = stmt
		.executeQuery("SELECT * from USERS INNER JOIN CART ON USERS.email = CART.email WHERE CART.email='" + email
				+ "'and CART.status='bill'");
		while (rs2.next()) {
	%>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-12 rounded-0">
				<h3 class="text-center">Bill</h3>
				<hr>
				<div class="mt-5 form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Name</div>
					<input name="address" value="<%=rs2.getString(1)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Email</div>
					<input name="address" value="<%out.println(email);%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Mobile Number</div>
					<input name="address" value="<%=rs2.getString(20)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Order Date</div>
					<input name="address" value="<%=rs2.getString(21)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Payment Method</div>
					<input name="address" value="<%=rs2.getString(23)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Expected
						Delivery</div>
					<input name="address" value="<%=rs2.getString(22)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">City</div>
					<input name="address" value="<%=rs2.getString(17)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Address</div>
					<input name="address" value="<%=rs2.getString(16)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">State</div>
					<input name="address" value="<%=rs2.getString(18)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-3"
						style="font-size: 1.3rem; font-weight: bold;">Country</div>
					<input name="address" value="<%=rs2.getString(19)%>"
						style="font-size: 1.2rem" disabled
						class="form-control p-2 col-sm-4" type="text" />
				</div>
				<%
				break;
				}
				%>
				<table class="my-5 table table-bordered"id="customers">
					<tr>
						<th>S.No</th>
						<th>Product Name</th>
						<th>category</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Sub Total</th>
					</tr>
					<%
					ResultSet rs1 = stmt
							.executeQuery("SELECT * FROM CART INNER JOIN  PRODUCTS ON  CART.product_id=PRODUCTS.id WHERE CART.email='"
							+ email + "' and CART.status='bill'");
					while (rs1.next()) {
						sno = sno + 1;
					%>

					<tr>
						<td>
							<%
							out.println(sno);
							%>
						</td>
						<td><%=rs1.getString(17)%></td>
						<td><%=rs1.getString(18)%></td>
						<td><%=rs1.getString(19)%></td>
						<td><%=rs1.getString(3)%></td>
						<td><%=rs1.getString(5)%></td>
					</tr>
					<tr>
						<%
						}
						%>
					
				</table>
				<h3 class="text-center mt-3">
					Total:<%
				out.println(total);
				%>
				
			</div>
		</div>
		<div class="row my-4">
			<div class="offset-md-5 col-sm-1">
				<a onclick="window.print();"><button
						class="btn btn-primary px-3">Print</button></a>
			</div>
			<div class="offset-md-4 col-sm-2">
				<a href="continueShopping.jsp"><button class="btn btn-success">Continue
						Shopping</button></a>
			</div>
		</div>
	</div>
	<%
	} catch (Exception e) {

	System.out.println(e);
	}
	%>
</body>
</html>