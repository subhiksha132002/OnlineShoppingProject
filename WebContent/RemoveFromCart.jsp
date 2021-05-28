<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
int product_id = Integer.parseInt(request.getParameter("id"));
try {
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	String query = "DELETE FROM CART WHERE email='" + email + "' and product_id='" + product_id + "' and address is NULL";
	stmt.executeUpdate(query);
	response.sendRedirect("myCart.jsp?msg=remove");
} catch (Exception e) {
	System.out.println(e);
}
%>