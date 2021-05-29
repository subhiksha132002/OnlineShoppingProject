<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="cancel";
try{
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("UPDATE CART SET status='"+status+"' WHERE product_id='"+id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=cancel");
}catch(Exception e){ 
	
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
	}
%>
