<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<script type="text/javascript" src="css/bootstrap/js/bootstrap.min.js"></script>
<title>Reset Password</title>
</head>
<body>
	<div class="container">
		<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
		<h1>Password Changed Successfully!!!</h1>
		<%} %>
		<% 
if("invalid".equals(msg))
{
%>
		<h1>Something Went Wrong!!! Try Again !</h1>
		<%} %>

		<div class="row p-3">
			<form class="offset-md-2 col-md-8" action="ForgotPasswordAction.jsp"
				method="post">
				<h1>Reset Password</h1>

				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Email</div>
					<input class="form-control p-2 col-sm-8" name="email" type="email"
						required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Mobile Number</div>
					<input class="form-control p-2 col-sm-8" name="mobilenumber"
						type="number" required />
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">New Password</div>
					<input class="form-control p-2 col-sm-8" name="newpassword"
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
					<textarea name="answer" class="form-control p-2 col-sm-8" type="text" required></textarea>
				</div>
				<div class="text-center mt-5">
					<button type="submit" class="btn btn-success px-4 py-2">
						Save</button>
				</div>
				<a class="d-block mt-4 text-center" href="#">Login to your
					account</a>
			</form>
		</div>
	</div>
</body>
</html>