<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
hr {
	width: 70%;
}
</style>
</head>
<body>
	<div style="margin-top: 150px;">
		<%
		try {

			Connection conn = ConnectionProvider.getCon();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from users where email='" + email + "'");
			while (rs.next()) {
		%>
		<h3>
			<%=rs.getString(1)%>
		</h3>
		<hr>
		<h3>
			<%=rs.getString(2)%>
		</h3>
		<hr>
		<h3>
			<%=rs.getString(3)%>
		</h3>
		<hr>
		<h3>
			<%=rs.getString(4)%>
		</h3>
		<hr>
		<br> <br> <br>
		<%
		}
		} catch (Exception e) {

		System.out.println(e);
		}
		%>
	</div>
</body>
</html>