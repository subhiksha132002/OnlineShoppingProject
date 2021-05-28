<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String product_id = request.getParameter("id");
try {
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	stmt.executeQuery(
	"DELETE FROM CART WHERE email='" + email + "' and product_id='" + product_id + "' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=remove");
} catch (Exception e) {
	System.out.println(e);
}
%>