<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<% 
String email = request.getParameter("email");
String mobilenumber = request.getParameter("mobilenumber");
String SecurityQuestion = request.getParameter("SecurityQuestion");
String answer = request.getParameter("answer");
String newpassword = request.getParameter("newpassword");
int check = 0;
try{

	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from users where email='"+email+ "'and mobilenumber= '"+mobilenumber+ "' and SecurityQuestion= '"+SecurityQuestion+"' and answer='"+answer+"'");
	while(rs.next()){	
		check = 1;
		stmt.executeUpdate("update users set password= '"+newpassword+"' where email= '"+email+"' ");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check == 0){	
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
	}
	catch(Exception e){	
		System.out.println(e);
	}
%>
	
		