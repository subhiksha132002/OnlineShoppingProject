<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="css/font-awesome.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="SignupAction.jsp" method="post">
				<input type="text" name="name" placeholder="Enter Name"
					autocomplete="off" required> <input type="email"
					name="email" placeholder="Enter Email" required> <input
					type="number" name="mobilenumber" placeholder="Enter Mobile Number"
					required> <select name="SecurityQuestion" required>
					<option
						value="What was the name of the first school you remember attending?">What
						was the name of the first school you remember attending?</option>
					<option value="What city were you born in?">What city were
						you born in?</option>
					<option value="What is your oldest sibling's middle name?">What
						is your oldest sibling's middle name?</option>
					<option
						value="What is the name of a college you applied to but didn't attend?">What
						is the name of a college you applied to but didn't attend?</option>
				</select> <input type="text" name="answer" placeholder="Enter Answer"
					required> <input type="password" name="password"
					placeholder="Enter Password" required> <input type="submit"
					value="Signup">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<h1>Successfully Registered</h1>
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
			<h2></h2>
			<p></p>
		</div>
	</div>

</body>
</html>