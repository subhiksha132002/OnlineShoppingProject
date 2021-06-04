<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<title>Add New Product</title>
</head>
<body>
	<div class="container">
		<%
		String msg = request.getParameter("msg");
		if ("done".equals(msg)) {
		%>
		<h3 class="text-center">Product Added Successfully!</h3>
		<%
		}
		%>
		<%
		if ("wrong".equals(msg)) {
		%>
		<h3 class="text-center">Some thing went wrong! Try Again!</h3>
		<%
		}
		%>
		<%
		int id = 1;
		try {
			Connection conn = ConnectionProvider.getCon();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select max(id) from products");
			while (rs.next()) {
				id = rs.getInt(1);
				id = id + 1;
			}
		} catch (Exception e) {
		}
		%>

		<div class="row">
			<form class="offset-md-2 col-md-8" action="AddNewProductAction.jsp"
				method="post">
				<h1>Add Product</h1>
				<input type="hidden" name="id" value="<%=id%>" >
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Name</div>
					<input class="form-control p-2 col-sm-6" name="name" type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Category</div>
					<input class="form-control p-2 col-sm-6" name="category"
						type="text" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Price</div>
					<input class="form-control p-2 col-sm-6" name="price" type="number" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Active</div>
					<select class="form-control p-2 col-sm-6" name="active">
						<option value=""></option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="text-center mt-5">
					<button type="submit" class="btn btn-success px-4 py-2">
						Add Product</button>
				</div>
			</form>
		</div>
	</div>
</body>
<br>
<br>
<br>
</body>
</html>