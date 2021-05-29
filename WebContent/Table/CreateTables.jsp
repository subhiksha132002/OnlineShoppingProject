<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try{

	Connection conn = ConnectionProvider.getCon();
	Statement stmt = conn.createStatement();
	String query = "create table users(name varchar(50),email varchar(50) primary key,mobileNumber bigint,SecurityQuestion varchar(300),answer varchar(300),password varchar(100),address varchar(200),city varchar(100),state varchar(100),country varchar(100))";
	String query1 = "create table products(id int,name varchar(300),category varchar(300),price int,active varchar(50))";
	String query2 = "create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(400),city varchar(100),state varchar(100),country varchar(100),mobilenumber bigint,orderDate date,deliveryDate date,paymentMethod varchar(100),transactionId varchar(100),status varchar(15))";
	System.out.println(query);
	System.out.println(query1);
	System.out.println(query2);
	//stmt.execute(query);
	//stmt.execute(query1);
	stmt.execute(query2);
	System.out.println("Table Created!!!");
	conn.close();
}catch(Exception e){
	
	System.out.print(e);
}

%>