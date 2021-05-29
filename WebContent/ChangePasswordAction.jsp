<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String oldpassword = request.getParameter("oldpassword");
String newpassword = request.getParameter("newpassword");
String confirmpassword = request.getParameter("confirmpassword");
if (!confirmpassword.equals(newpassword))
	response.sendRedirect("changePassword.jsp?msg=notMatch");
else {
	int check = 0;
	try {
		Connection conn = ConnectionProvider.getCon();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt
		.executeQuery("SELECT * FROM USERS WHERE email='" + email + "' and password='" + oldpassword + "'");
		while (rs.next()) {
	check = 1;
	stmt.executeUpdate("UPDATE USERS SET password='" + newpassword + "' WHERE email='" + email + "'");
	response.sendRedirect("changePassword.jsp?msg=done");
		}
		if (check == 0)
	response.sendRedirect("changePassword.jsp?msg=wrong");
	} catch (Exception e) {
		System.out.println(e);
	}

}
%>
