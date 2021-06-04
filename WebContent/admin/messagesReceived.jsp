<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Received Messages</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="min-height: 100vh">
	<div style="color: white; text-align: center; font-size: 30px;">
		Messages Received <i class='fas fa-comment-alt'></i>
	</div>
	<div class="container">
		<div class="row mt-5" style="align-content: flex-start">
			<table class="table table-striped col-md-12" style="overflow:hidden">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Email</th>
						<th scope="col">Subject</th>
						<th scope="col">Body</th>
					</tr>
				</thead>
				<tbody>
					<%
					try {
						Connection conn = ConnectionProvider.getCon();
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery("SELECT * FROM MESSAGE");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
					</tr>
					<%
					}
					} catch (Exception e) {
					System.out.println(e);
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>