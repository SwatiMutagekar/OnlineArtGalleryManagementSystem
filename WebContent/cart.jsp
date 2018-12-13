<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<style>
h2.padding{
padding-left:7cm;
}
body{
background: back/s10.jpg
no-repeat;
background-size:100%;
}

</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>Insert title here</title>
<h1 align="justify"><br><br>        </br>Your cart:</h1>

<% String s1=request.getParameter("artno");
String artno=null;
String pname=null;
String price=null;



%>


<p><%--s1--%>

<h2></h2>
</head>
<form action="http://localhost:8080/OnlineArtGalleryManagementSystem/newcart"  method="post">

<body background="back/s10.jpg">


<div>



<%
		
		
		
		try{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
		
	ResultSet rs;
		
		PreparedStatement pst=(PreparedStatement)con.prepareStatement("select artno,pname,price from allpaintings where artno=?");
		pst.setString(1,s1);
		
		rs=pst.executeQuery();
		HttpServletResponse resp;
		
		
		//PrintWriter out=resp.getWriter();	%>	
   <% while(rs.next()){
	   
	    artno=rs.getString(1);
	    pname=rs.getString(2);
	    price=rs.getString(3);  
	   	   %>		
		</div>
		<% } %>
		

		
<%} catch(Exception e){ 
	System.out.println("Unable to connect"); }%>
	
<h2><br>
ART NO:-<input style="height:35px; font-size:14pt"  type="textbox" size="50" name="artno" value=<%=artno%>><br><br>
PAINTING NAME:-  <input style="height:35px; font-size:14pt"  type="textbox" size="50" name="pname" value=<%=pname%>><br><br>
PRICE:-  <input style="height:35px; font-size:14pt"  type="textbox" size="50" name="price" value=<%=price%>><br><br>
</h2>
<br>

<b><text-align=center><h3> Enter your Customer-id provided during registration</h3></b><br>
<input style="height:30px;" type="textbox" size="35" name="cid" value="">
<input style="height:30px;" type="submit" size="35"  value="Confirm Order">

	
		
		</TABLE>
		
		
</form>
</body>
</html>

