<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="ForgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
  <select name="SecurityQuestion" required>
   <option value="What was the name of the first school you remember attending?">What was the name of the first school you remember attending?</option>
   <option value="What city were you born in?">What city were you born in?</option>
   <option value="What is your oldest sibling's middle name?">What is your oldest sibling's middle name?</option>
   <option value="What is the name of a college you applied to but didn't attend?">What is the name of a college you applied to but didn't attend?</option>
   </select>
   <input type="text" name="answer" placeholder="Enter Answer" required>
   <input type="password" name="newpassword" placeholder="Enter your New Password" required>
   <input type="submit" value="Save">
  </form>  
    <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%> 
<h1>Password Changed Successfully!!!</h1>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong!!! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>