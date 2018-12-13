<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form action="img1.java" method="post"></form>
<div style="width:1300px; background-color:white">
<div style="width: 1300px;">
<img border=10  style=" float:left;display:inline"  src="abstract/2.jpg"  width="900" height="600" hspace="20" vspace="20" alt=""/>
<%
try{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
		String sql="select a.artno,a.pname,a.category,a.price,a.year,a.psize,a.painttype,ar.artist_name from artist ar,allpaintings a where ar.artist_id=a.artist_id and a.artno='a2'";
		Statement sobj=con.createStatement();
		ResultSet rs=sobj.executeQuery(sql);
		HttpServletResponse resp;
		//PrintWriter out=resp.getWriter();
%>
<h4><u>DESCRIPTION:</u>

</h4>
<TABLE cellpadding="15" border="2" style="background-color:pink;">

		
<% while(rs.next()){ %>		
	
	
		<tr>
		<td><b>Art.no</b></td>
		<td><b><%=rs.getString(1)%></b></td></tr>
		<tr>
		<td><b>Painting name</b></td>
		<td><b><%=rs.getString(2)%></b></td>
		</tr>
		<tr>
		<td><b>Category</b></td>
		<td><b><%=rs.getString(3)%></b></td>
		</tr>
		<tr>
		<td><b>Price</b></td>
		<td><b><%=rs.getString(4)%></b></td>
		</tr>
		<tr>
		<td><b>Year</b></td>
		<td><b><%=rs.getString(5)%></b></td>
		</tr>
		<tr>
		<td><b>Painting size</b></td>
		<td><b><%=rs.getString(6)%></b></td>
		</tr>
		<tr>
		<td><b>Type of Paint</b></td>
		<td><b><%=rs.getString(7)%></b></td>
		</tr>
		<tr>
		<td><b>Artist name</b></td>
		<td><b><%=rs.getString(8)%></b></td>
		</tr>
		</TABLE>
		
		<div><table cellpadding="15" border="2" style="background-color:pink;">
		<tr>
		<td>Quantity
<button>1</button> 
<tr>
		</tr>
	</table></div>
		
		
		
		
		
		
		<% } %>
		<% 
}catch(Exception e){ %>
		<%out.println("unable to connect");%>
		<%} %> 
		
</div>


</div>
<h2 align="left">
 <form action="cart.jsp" method="" >
 <button style='margin-left:50px' name="artno" value="a2">ADD TO CART</button></form><br>
 <a href="abstract.jsp"><button style='margin-left:50px' >BACK</button></a></body>
</html>