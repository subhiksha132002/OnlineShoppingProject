<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if ("subhiksha132002@gmail.com".equals(email) && "Qwertyuiop".equals(password)) {

	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");

} else {

	int z = 0;
	try {

		Connection conn = ConnectionProvider.getCon();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt
		.executeQuery("select * from users where email='" + email + "'and password='" + password + "'");
		while (rs.next()) {

	z = 1;
	session.setAttribute("email", email);
	response.sendRedirect("home.jsp");
		}
		if (z == 0) {

	response.sendRedirect("login.jsp?msg=notexist");

		}
	} catch (Exception e) {

		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");

	}

}
%>