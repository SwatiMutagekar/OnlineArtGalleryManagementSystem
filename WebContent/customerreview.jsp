<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<html>
<head>
<h1 align-text="center"><u>Customer Reviews & Queries</u></h2>
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

</head>
<body>



<%
try{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
		String sql="select * from contactus";
		Statement sobj=con.createStatement();
		ResultSet rs=sobj.executeQuery(sql);
		HttpServletResponse resp;
		//PrintWriter out=resp.getWriter();
%>



<table><tr><th>Name</th>
<th>E-mail</th>
<th>Phone</th>
<th>Subject</th>
<th>Message</th>
</tr>





		
<% while(rs.next()){ %>		
	
	
		
		
		<tr><td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
			<% } %>
		
		
		
		</TABLE>
		
	
		
		
		
		
		
		
		
		<% 
}catch(Exception e){ %>
		<%out.println("unable to connect");%>
		<%} %> 

</body>
</html>