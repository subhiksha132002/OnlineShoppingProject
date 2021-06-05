<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="text-center">Your security Question successfully
		changed !</h3>
	<%
	}
	%>
	<%
	if ("wrong".equals(msg)) {
	%>
	<h3 class="text-center">Your Password is wrong!</h3>
	<%
	}
	%>
	<div class="container" style="height: 100vh;">
		<div class="row p-3">
			<form class="offset-md-2 col-md-8"
				action="ChangeSecurityQuestionAction.jsp" method="post">
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Security Question</div>
					<select class="form-control p-2 col-sm-8" name="securityQuestion"
						required>
						<option></option>
						<option
							value="What was the name of the first school you remember attending?">What
							was the name of the first school you remember attending?</option>
						<option value="What city were you born in?">What city
							were you born in?</option>
					</select>
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Answer</div>
					<textarea class="form-control p-2 col-sm-8" name="newanswer" required></textarea>
				</div>
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Password</div>
					<input class="form-control p-2 col-sm-8" name="password"
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