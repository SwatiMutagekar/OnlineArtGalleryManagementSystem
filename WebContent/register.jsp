<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>body{
background: back/register.jpg
no-repeat;
background-size:100%;
}</style>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="back/register.jpg" bgcolor="#F1948A">
<center>
<h2><b><br><br>REGISTRATION PAGE</b></h2>
<br><br>
<form action="registerservlet" method="post">
<table cellspacing="4">
<tr>
<td><b>USERNAME</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text"name="uname"></td>
</tr>
<tr>
<td><b>PASSWORD</b></td>
<td><input style="height:35px; font-size:14pt" size="60" type="password"name="pass"></td>
<tr>
<td><b>RE-ENTER PASSWORD</b></td>
<td><input style="height:35px; font-size:14pt" size="60" type="password"name="rpass"></td>
</tr>
<tr>
<td><b>Firstname</b></td>

<td><input style="height:35px; font-size:14pt" size="61" type="text" name="fname"></td>
<tr>
<td><b>Lastname</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text"name="lname"></td>
</tr>
<tr>
<td><b>Email</b></td>
<td><input style="height:35px; font-size:14pt" size="61"  type="email" name="email"></td>
</tr>
<tr>
<td><b>Phone</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text "name="phone"></td>
</tr>
<tr>
<td></td>
<td><h2><input style="height:30px; font-size:10pt" type="submit" value="Register"></h2></td>
</tr>



</table>

</form>
</center>
</body>
</html>