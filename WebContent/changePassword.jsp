<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("notMatch".equals(msg)) {
	%>
	<h3 class="text-center">New password and Confirm password does not
		match!</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="text-center">Your old Password is wrong!</h3>
	<%
	}
	%>
	<%
	if ("done".equals(msg)) {
	%>
	<h3 class="text-center">Password change successfully!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="text-center">Something went wrong! Try again!</h3>
	<%
	}
	%>
	<div class="container" style="height: 100vh;">
		<div class="row p-3">
			<form class="offset-md-2 col-md-8" action="ChangePasswordAction.jsp"
				method="post">
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Old Password</div>
					<input class="form-control p-2 col-sm-8" name="oldpassword"
						type="password" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">New Password</div>
					<input class="form-control p-2 col-sm-8" name="newpassword"
						type="password" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Confirm Password</div>
					<input class="form-control p-2 col-sm-8" name="confirmpassword"
						type="password" required />
				</div>
				<div class="text-center mt-4">
					<button class="btn btn-success" type="submit">Save</button>
				</div>
			</form>
		</div>
	</div>
</body>
<br>
<br>
<br>
</html>