<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*" %> 
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import ="java.util.GregorianCalendar"%>
<html>
<head>
<style>
table
{
font-family:ariel,sans-serif;
border-collapse:collapse;
width:100%
}
td,th{
border:1px solid #ffdab9;
text-align:left;
padding:8px;
}
tr:nth-child(even){
background-color:#ffdab9;
}</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head><h1><u>Today's Sales Report</u></h1>
<body>
<%
GregorianCalendar gc=new GregorianCalendar(); 
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MMM-yy");
		String odate= sdf.format(gc.getTime());
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println(con);
			
			
			
			
			ResultSet rs;
			PreparedStatement pst=(PreparedStatement)con.prepareStatement("select * from orderdetails where odate=?");
				
				pst.setString(1,odate);
				rs=pst.executeQuery();%>
				
				

<table><tr><th>Order ID</th>
<th>Customer ID</th>
<th>Art No</th>
<th>Category</th>
<th>Order Amount</th>
<th>Order Date</th>
<th>Quantity</th>



</tr>
				
				
			







		
<% while(rs.next()){ %>		
	
	
		
		
		<tr><td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=rs.getString(7)%></td>
		</tr>
		<% } %>
		
		
		
		</TABLE>
		
	
		
		
		
		
		
		
		
		<% 
}catch(Exception e){ %>
		<%out.println("unable to connect");%>
		<%} %> 


		
		

</body>
</html>