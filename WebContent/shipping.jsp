<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>body{
background: back/ship.jpg
no-repeat;
background-size:100%;
}</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<h2>Please provide Shipping Details for the product to be delivered</h2>
</head>
<body background="back/ship.jpg">
<form action="shipping" method="post">
<table cellspacing="4">
<tr>
<td><b>Name</b></td>
<td><input style="height:35px; font-size:14pt" type="text" size="90" name="name" ></td>
</tr>
<tr>
<td><b>House no.</b></td>
<td><input style="height:35px; font-size:14pt" type="text"  size="90" name="hno"></td>
</tr>
<tr>
<td><b>Street</b></td>
<td><input style="height:35px; font-size:14pt" type="text" size="90" name="street"></td>

<tr>
<td><b>City</b></td>
<td><input style="height:35px; font-size:14pt" type="text"  size="90" name="city"></td>
</tr>
<tr>
<td><b>Pincode</b></td>

<td><input style="height:35px; font-size:14pt" type="text"  size="90" name="pincode"></td>
</tr>

<tr>
<td><b>State</b></td>

<td><input style="height:35px; font-size:14pt" type="text"  size="90" name="state"></td>
</tr>
<tr>
<td><b>Country</b></td>



<td><select name="country">
<option style="height:35px; font-size:18pt"  size="90" value="India"> India </option>
<option style="height:35px; font-size:18pt"  size="90" value="Japan"> Japan </option>
<option style="height:35px; font-size:18pt"  size="90" value="China"> China </option>
<option style="height:35px; font-size:18pt"  size="90" value="Australia"> Australia </option>
</select>	

</td>
</tr>
<tr></tr>
<tr>
<td></td>
<td><input style="height:35px; font-size:14pt" type="submit"value="Confirm Order"></td>
</tr>

</table>
</form>




</body>
</html>
