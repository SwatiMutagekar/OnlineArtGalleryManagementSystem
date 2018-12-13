<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head><style>
h2.padding{
padding-left:7cm;
}
body{
background: back/new8.jpg
no-repeat;
background-size:100%;
}</style><html>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

<body background="back/new8.jpg" >
<br>
<br>
<h2 class="padding"><font color="purple">ADMIN LOGIN PAGE</h2></font>

${msg}
<form action="adlogin"method="post">
<table align="left">
<tr>
<td><font color="purple">ADMIN-NAME:</td></font>
<td><input style="height:35px; font-size:14pt" type="text" size="62"name="aname"></td>
</tr>
<br><br><br>
<tr>
<td><font color="purple">PASSWORD:</td></font>
<td><input style="height:35px; font-size:14pt" type="password" size="61" name="apass"></td>
</tr>
<tr>
<td></td>
<td><center><input style="height:35px;" type="submit"value="LOGIN"></center></td>
</tr>


</table>



</form>
</body>
</html>