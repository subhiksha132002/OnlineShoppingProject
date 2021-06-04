<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/signup.css" />
<title>Edit Product</title>
<style>
</style>
</head>
<body style="min-height:100vh">
	<div style="height:87vh" class="container">
		<%
		String id = request.getParameter("id");
		try {
			Connection conn = ConnectionProvider.getCon();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from products where id='" + id + "'");
			while (rs.next()) {
		%>
		<div class="row">
			<form class="offset-md-2 col-md-8" action="EditProductAction.jsp" method="post">
				<h1>Edit Product</h1>
				<input type="hidden" name="id" value="<%=id%>">
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
						Save Product</button>
				</div>
			</form>
			<%
			}
			} catch (Exception e) {

			System.out.println(e);
			}
			%>
		</div>
</body>
</body>
</html>