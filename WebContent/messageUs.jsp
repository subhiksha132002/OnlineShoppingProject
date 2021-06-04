<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/signup.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body style="min-height: 100vh">
<div class="text-white text-center my-3" style="font-size: 30px;">
			Message Us <i class='fas fa-comment-alt'></i>
		</div>
		<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
		<h3 style="text-align: center; color: yellow;">Message
			successfully sent. Our team will contact you soon!</h3>
		<%
			}
			%>
		<%
			if ("invalid".equals(msg)) {
			%>
		<h3 style="text-align: center;">Some thing Went Wrong! Try Again!</h3>
		<%
			}
			%>

	<div class="container">
		<div class="row" style="align-content: flex-start">
			<form class="col-md-12" action="MessageUsAction.jsp" method="post">
				<input class="form-control mt-3" name="subject" type="text"
					placeholder="Subject" required>
				<textarea class="form-control my-3" rows="5" name="body"
					placeholder="Your Message" required></textarea>
				<div class="text-center">
					<button class="btn btn-success" type="submit">Send</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>