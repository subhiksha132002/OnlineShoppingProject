<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<script type="text/javascript" src="css/bootstrap/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>
	<div class='whysignLogin'>
		<%
		String msg = request.getParameter("msg");
		if ("notexist".equals(msg)) {
		%>
		<h1>Incorrect Username or Password</h1>
		<%
		}
		%>
		<%
		if ("invalid".equals(msg)) {
		%>
		<h1>Something Went Wrong!!! Try Again !</h1>
		<%
		}
		%>
	</div>
	<div class='container' style="height: 100vh;">
		<div class="row p-3">
			<form action="LoginAction.jsp" method="post"
				class="offset-md-2 col-md-8" action="">
				<h1>Log In</h1>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Email</div>
					<input name="email" class="form-control p-2 col-sm-6" type="email" />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label offset-sm-2 col-sm-2">Password</div>
					<input name="password" class="form-control p-2 col-sm-6"
						type="password" />
				</div>
				<div class="text-center mt-5">
					<button type="submit" class="btn btn-primary px-4 py-2">
						Login</button>
				</div>
				<a class="d-block mt-4 text-center" href="signup.jsp">Create an
					Account?</a> <a class="d-block mt-4 text-center"
					href="forgotPassword.jsp">Forget Password?</a>
			</form>
		</div>
	</div>

</body>
</html>