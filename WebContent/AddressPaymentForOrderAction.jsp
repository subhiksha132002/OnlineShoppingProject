<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String mobilenumber=request.getParameter("mobilenumber");
String paymentMethod=request.getParameter("paymentMethod");
String transactionId="";
transactionId=request.getParameter("transactionId");
String status = "bill";
try{
	
	Connection conn = ConnectionProvider.getCon();
	PreparedStatement ps = conn.prepareStatement("UPDATE USERS SET address=?,city=?,state=?,country=?,mobilenumber=? where email=?");
	ps.setString(1,address);
	ps.setString(2,city);
	ps.setString(3,state);
	ps.setString(4,country);
	ps.setLong(5,Long.parseLong(mobilenumber));
	ps.setString(6,email);
	ps.executeUpdate();

	PreparedStatement ps1=conn.prepareStatement("UPDATE CART SET address=?,city=?,state=?,country=?,mobilenumber=?,orderDate=now(),deliveryDate=Date_ADD(orderDate,INTERVAL 7 DAY),paymentMethod=?,transactionId=?,status=? where email=? and address is NULL");
	ps1.setString(1,address);
	ps1.setString(2,city);
	ps1.setString(3,state);
	ps1.setString(4,country);
	ps1.setLong(5,Long.parseLong(mobilenumber));;
	ps1.setString(6,paymentMethod);
	ps1.setString(7,transactionId);
	ps1.setString(8,status);
	ps1.setString(9,email);
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
	
}catch(Exception e){
	
	System.out.println(e); 
}
%>