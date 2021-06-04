<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="css/changeDetails.css"> -->
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/addressPaymentForOrder.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'>
	
</script>
<title>Payment</title>
<script>
	if (window.history.forward(1) != null)
		window.history.forward(1);
</script>
</head>
<body class="min-height:100vh">
	<div height="100%" class="container mt-4">
		<div class="row" style="align-content: flex-start;">
			<table class="table table-striped col-md-12 overflow-hidden">
				<thead>
					<%
					String email = session.getAttribute("email").toString();
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
						<th scope="col" style="background-color: yellow;">Total: <i
							class="fa fa-inr"></i> <%
 out.println(total);
 %>
						</th>
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
						<td><%=rs.getString(8)%></td>
						<td><i class="fa fa-inr"></i><%=rs.getString(10)%></td>
					</tr>
					<%
					}
					ResultSet rs2 = stmt.executeQuery("SELECT * FROM USERS WHERE email='" + email + "'");
					while (rs2.next()) {
					%>
				</tbody>
			</table>
		</div>
		<hr style="width: 100%">
		<div class="row mb-4">
			<form class="col-md-12" action="AddressPaymentForOrderAction.jsp"
				method="post">
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Address</div>
					<input name="address" class="form-control p-2 col-sm-7" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">City</div>
					<input name="city" class="form-control p-2 col-sm-7" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">State</div>
					<input name="state" class="form-control p-2 col-sm-7" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Country</div>
					<input name="country" class="form-control p-2 col-sm-7" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Payment Type</div>
					<select name="paymentMethod" class="form-control p-2 col-sm-7">
						<option value="Cash On Delivery(COD)">Cash On
							Delivery(COD)</option>
						<option value="Online Payment">Online Payment</option>
					</select>
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Transaction ID</div>
					<input name="transactionId" class="form-control p-2 col-sm-7"
						type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Mobile Number</div>
					<input name="mobilenumber" class="form-control p-2 col-sm-7"
						type="number" />
				</div>
				<div class="row">
					<button class="btn btn-primary offset-sm-9 col-sm-2" type="submit">Generate
						Bill</button>
				</div>
			</form>
		</div>
	</div>
	<%
	}
	} catch (Exception e) {

	System.out.println(e);
	}
	%>
</body>
</html>