<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try{
	
	Connection conn = ConnectionProvider.getCon();
    Statement stmt = conn.createStatement();
    stmt.executeUpdate("update products set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"'where id='"+id+"'");
    if(active.equals("No")){
    	
    stmt.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");	
    
    }
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}catch(Exception e){
	
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>