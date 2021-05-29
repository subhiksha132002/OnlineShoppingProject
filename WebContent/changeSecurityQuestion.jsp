<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<% 
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% 
if("wrong".equals(msg)){
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="ChangeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
<select class="input-style" name="securityQuestion">
<option value="What was the name of the first school you remember attending?">What was the name of the first school you remember attending?</option>
<option value="What city were you born in?">What city were you born in?</option>
 <option value="What is your oldest sibling middle name?">What is your oldest sibling's middle name?</option>
<option value="What is the name of a college you applied to but did not attend?">What is the name of a college you applied to but didn't attend?</option> 
</select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newanswer" placeholder="Enter Your New Answer" required> 
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Your Password(For Security)" required>
<hr>
<button class="button" type="submit">Save  <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>