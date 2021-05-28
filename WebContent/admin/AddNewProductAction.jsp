<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String category=request.getParameter("category");
int price=Integer.parseInt(request.getParameter("price"));
String active=request.getParameter("active");
System.out.println(active);

try{	
	Connection conn = ConnectionProvider.getCon();
	PreparedStatement ps = conn.prepareStatement("insert into products values(?,?,?,?,?)");
	ps.setInt(1,id);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setInt(4,price);
	ps.setString(5,active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e){	
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}
%>