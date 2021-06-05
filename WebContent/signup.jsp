<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<script type="text/javascript" src="css/bootstrap/js/bootstrap.min.js"></script>
<title>Signup</title>
</head>
<body>
	<div class='whysign'>
		<%
		String msg = request.getParameter("msg");
		if ("valid".equals(msg)) {
		%>
		<h1>Successfully Registered!!!</h1>
		<%
		}
		%>
		<%
		if ("invalid".equals(msg)) {
		%>
		<h1>Something Went Wrong!!! Try Again !!</h1>
		<%
		}
		%>
	</div>
	<div class="container" style="height: 100vh;">
		<div class="row p-3">
			<form class="offset-md-2 col-md-8" action="SignupAction.jsp"
				method="post">
				<h1>Sign Up</h1>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Name</div>
					<input name="name" class="form-control p-2 col-sm-8" type="text"
						min="3" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Email</div>
					<input name="email" class="form-control p-2 col-sm-8" type="email"
						required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Mobile Number</div>
					<input name="mobilenumber" class="form-control p-2 col-sm-8"
						type="number" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Password</div>
					<input name="password" class="form-control p-2 col-sm-8"
						type="password" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Security Question</div>
					<select name="SecurityQuestion" class="form-control p-2 col-sm-8">
						<option value=""></option>
						<option
							value="What was the name of the first school you remember attending?">
							What was the name of the first school you remember attending?</option>
						<option value="What city were you born in?">What city
							were you born in?</option>
						<option value="What is your oldest sibling's middle name?">
							What is your oldest sibling's middle name?</option>
						<option
							value="What is the name of a college you applied to but didn't attend?">
							What is the name of a college you applied to but didn't attend?</option>
					</select>
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Answer</div>
					<textarea name="answer" class="form-control p-2 col-sm-8" required></textarea>
				</div>
				<div class="text-center mt-2">
					<button type="submit" class="btn btn-success px-4 py-2">
						Sign Up</button>
				</div>
				<a class="d-block mt-3 text-center" href="login.jsp">Already
					have an account?</a>
			</form>
		</div>
	</div>
</body>
</html>