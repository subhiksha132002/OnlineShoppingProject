<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%> 
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="text-center">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="text-center">Your Password is wrong!</h3>
<%} %>
<div class="container" style="height: 100vh;">
		<div class="row p-3">
			<form class="offset-md-2 col-md-8" action="ChangeMobileNumberAction.jsp"
				method="post">
				<div class="form-group row no-gutters">
					<div class="form-label col-sm-4">Mobile Number</div>
					<input class="form-control p-2 col-sm-8" name="mobilenumber"
						type="number" required />
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
<br><br><br>
</html>