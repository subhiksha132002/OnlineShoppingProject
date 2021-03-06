<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Delivered Orders</title>
<style>
.th-style {
	width: 25%;
}
</style>
</head>
<body style="min-height:100vh">
	<div style="color: white; text-align: center; font-size: 30px;">
		Delivered Orders <i class='fas fa-dolly'></i>
	</div>
	<div class="container-fluid" style="height: 87vh"><div class="row mt-5" style="align-content:flex-start">
			<table class="table table-striped col-md-12 overflow-hidden" id="customers">
			<tr class="text-center">
				<th>Mobile Number</th>
				<th scope="col">Product Name</th>
				<th scope="col">Quantity</th>
				<th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Country</th>
				<th scope="col">Order Date</th>
				<th scope="col">Expected Delivery Date</th>
				<th scope="col">Payment Method</th>
				<th scope="col">Status</th>
			</tr>
			<%
        try{
        	
        	Connection conn=ConnectionProvider.getCon();
        	Statement stmt=conn.createStatement();
        	ResultSet rs=stmt.executeQuery("SELECT *FROM CART INNER JOIN PRODUCTS ON CART.product_id=PRODUCTS.id WHERE CART.orderDate is not NULL and CART.status='Delivered'");
        	while(rs.next())
        	{
        		%>

			<tr class="text-center">
				<td><%=rs.getString(10) %></td>
				<td><%=rs.getString(17) %></td>
				<td><%=rs.getString(3) %></td>
				<td><i class="fa fa-inr"></i><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(9) %></td>
				<td><%=rs.getString(11) %></td>
				<td><%=rs.getString(12) %></td>
				<td><%=rs.getString(13) %></td>
				<td><%=rs.getString(15) %></td>
			</tr>
			<%
         } }catch(Exception e){
        	 
        	 System.out.println(e);
         }
         %>

		</table>
	</div>
</body>
</html>