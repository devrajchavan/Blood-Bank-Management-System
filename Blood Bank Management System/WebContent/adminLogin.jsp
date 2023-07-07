<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	
	<%
		String msg = request.getParameter("msg");
	
	 if("Invalid".equals(msg)){
	 %>
		 <center><font color="red" size="5">Invalid Username or Password !!</font></center>
	 <%
	 }
	
	%>
	

<form action="adminLoginAction.jsp" method="post">

<div class="form-group">
	
	<center>
	
		<h2>Username : </h2>
		<input type="text" name="username" placeholder="Enter Username" required>
		
		<h2>Password : </h2>
		<input type="password" name="password" placeholder="Enter Password" required>
	
		<br><br>
		<button type="submit" class="button">Login</button>
		
	</center>

</div>

	


</form>
	
	
	
</div>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ DYPIT-Devraj Chavan :: 2023  </center></h3>
</body>
</html>
