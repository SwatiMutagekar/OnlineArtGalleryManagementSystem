<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>body{
background: back/loginpage.jpg
no-repeat;
background-size:100%;
}</style>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="back/loginpage.jpg">
<br>
<br>
<br>
<br>

<h2 align="center"><b>WELCOME TO THE WORLD OF ARTS >>>></b>
<br>
<br>
<b> PLEASE LOGIN</b> </h2>
<br><br>
<h2><b><center>${msg}</center></b></h2>


<form action="loginservlet"method="post">
<table align="center">
<tr><td><b>USERNAME:</b></td>
<td><input style="height:35px; font-size:14pt"  type="text" size="61" name="uname"></td>

</tr>
<br><br>
<tr>
<td><b>PASSWORD:</b></td>
<td><input  style="height:35px; font-size:14pt" type="password" size="60" name="pass"></td>
</tr>
<br>
<br>
<tr>
</tr>
<tr>
<td></td>
<td><center><input  style="height:35px;" type="submit" value="LOGIN"></center></td>
</tr>


</table>



</form>
<br>

<div align="center" font size="blue"><h2>
<a href='register.jsp'> <b><font color="blue">New user? Register now..</font></b></a></h2>

</div>

<div align="center"><h2>
<a href='adminlogin.jsp'><b><font color="blue">Login as Admin..</font></b></a></h2>

</div>

</body>
</html>

