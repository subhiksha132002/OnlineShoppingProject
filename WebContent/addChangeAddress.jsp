<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>ADD or Change Address</title>
</head>
<body class="min-height:100vh">
	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<h3 class="text-center">Address Successfully Updated !</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="text-center">Some thing Went Wrong! Try Again!</h3>
	<%
	}
	%>
	<%
	try {
		Connection conn = ConnectionProvider.getCon();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from users where email='" + email + "'");
		while (rs.next()) {
	%>
	<div class="container" style="height: 100vh;">
		<div class="row p-3">
			<form class="offset-md-2 col-md-8"
				action="AddChangeAddressAction.jsp" method="post">
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Address</div>
					<input class="form-control p-2 col-sm-8" name="address"
						type="text" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">City</div>
					<input class="form-control p-2 col-sm-8" name="city"
						type="text" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">State</div>
					<input class="form-control p-2 col-sm-8" name="state"
						type="text" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Country</div>
					<input class="form-control p-2 col-sm-8" name="country"
						type="text" required />
				</div>
				<div class="text-center mt-4">
					<button class="btn btn-success" type="submit">Save</button>
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
<br>
<br>
<br>
<br>
</html>