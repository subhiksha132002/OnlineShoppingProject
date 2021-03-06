<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/signup.css" />
<title>Edit Product</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="min-height: 100vh">
	<div class="mt-4 text-white text-center" style="font-size: 30px;">
		All Products & Edit Products <i class='fab fa-elementor'></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert">Product Successfully Updated!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="alert">Something went wrong!!! Try again!</h3>
	<%
	}
	%>
	<div class="container">
		<div class="row mt-4" style="align-content: flex-start">
			<table class="table table-striped col-md-12 mb-5" style="overflow: hidden">
				<thead>
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Category</th>
						<th scope="col"><i class="fa fa-inr"></i> Price</th>
						<th>Status</th>
						<th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
						Connection conn = ConnectionProvider.getCon();
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery("select * from products");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit
								<i class='fas fa-pen-fancy'></i>
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
</body>
</html>