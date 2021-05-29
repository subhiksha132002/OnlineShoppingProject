<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String securityQuestion = request.getParameter("securityQuestion");
String newAnswer = request.getParameter("newanswer");
String password = request.getParameter("password");
int check = 0;
try {
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM USERS WHERE email='" + email + "' and password='" + password + "'");
	while (rs.next()) {
		check = 1;
		stmt.executeUpdate("UPDATE USERS SET securityQuestion='" + securityQuestion + "',answer='" + newAnswer + "' WHERE email='" + email + "'");
		System.out.println("Check" + check);
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}
	if (check == 0)
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
} catch (Exception e) {
	System.out.println(e);
}
%>