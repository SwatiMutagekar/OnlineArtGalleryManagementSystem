<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>body{
background: back/new11.jpg
no-repeat;
background-size:55%;
}</style>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="back/new11.jpg">
<center>
<h2><b><br><br>ADD A NEW ADMIN</b></h2>
<br><br>
<form action="addadmin" method="post">
<table cellspacing="4">
<tr>
<td><b>ADMIN-ID</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text"name="aid"></td>
</tr>
<tr>
<td><b>ADMIN-NAME</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text"name="aname"></td>
</tr>
<tr>
<td><b>PASSWORD</b></td>
<td><input style="height:35px; font-size:14pt" size="60" type="password"name="pass"></td>
</tr><tr>
<td><b>Phone</b></td>
<td><input style="height:35px; font-size:14pt" size="61" type="text "name="phone"></td>
</tr>
<tr>
<td></td>
<td><h2><input style="height:30px; font-size:10pt" type="submit" value="ADD"></h2></td>
</tr>



</table>
</body>
</html>