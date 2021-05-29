<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String mobilenumber=request.getParameter("mobilenumber");
String password=request.getParameter("password");

int check=0;
try{
	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM USERS WHERE email='"+email+"' and password='"+password+"'");
	while(rs.next()){
		check=1;
		stmt.executeUpdate("UPDATE USERS SET mobilenumber='"+mobilenumber+"' where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");	
	}if(check==0)
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
catch(Exception e){
	System.out.println(e);
	}
	%>