<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<style>body{
background: back/art2.jpg
no-repeat;
background-size:100%;
}</style><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="back/art2.jpg">
<% try{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	System.out.println(con);
		String sql="select count(*) from orderdetails";
		Statement sobj=con.createStatement();
	ResultSet rs=sobj.executeQuery(sql);%>
		<%  
		
		while(rs.next())
		{%>
		<br>                
		<br>
		<br>                           </br>
		<h1><center>Total number of Orders:<br><br><br><button style=width:100px;height:100px><h1><%=rs.getString(1)%></h1></button></center></h1>
		<% }
		
		System.out.println("success");%>
		
		
		<%} catch(Exception e){
		
		}%>
</body>
</html>