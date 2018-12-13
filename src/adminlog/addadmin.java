package adminlog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class addadmin extends HttpServlet {

	/**
	 * @param args
	 */protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String aid=req.getParameter("aid");	
		 String aname=req.getParameter("aname");
			String pass=req.getParameter("pass");
			String phone=req.getParameter("phone");
			if(aid==""||aname==""||pass==""||phone=="")
			{
				req.setAttribute("msg","All fields are mandatory");
				getServletContext().getRequestDispatcher("/link.jsp").forward(req, resp);
			}
			else
			{
				addnew(aid,aname,pass,phone);
				PrintWriter pw=resp.getWriter();
				pw.println("<html><body><b><h2><center>Added admin successfully</center></h2></b></body></html>");
			}
			}

			public void addnew(String aid,String aname,String pass,String phone)
			{
				
			try{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
		    Connection con=DriverManager.getConnection(  
		    "jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","SYSTEM");  
		      
		    CallableStatement stmt=con.prepareCall("{call insertRADMIN1(?,?,?,?)}");  
		    stmt.setString(1,aid);  
		    stmt.setString(2,aname); 
		    stmt.setString(3,pass); 
		    stmt.setString(4,phone);
		    stmt.execute();  
			}catch(Exception e)
			{
				
			}
			
			
			}
			}
	//public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
	/*	try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println(con);
				//String sql="select count(*) from orderdetails";
				//Statement sobj=con.createStatement();
				//ResultSet rs=sobj.executeQuery(sql);
				 CallableStatement stmt=con.prepareCall("{call insertadmin(?,?,?,?)}");
				System.out.println("success");
				stmt.setString(1,"1");
				stmt.setString(2,"s");
				System.out.println("success");
				stmt.setString(3,"s");
				stmt.setString(4,"2");
				System.out.println("success");
				stmt.execute();  
				//stmt.setString(1,"1");
				//stmt.setString(1,"1");
				//ResultSet rs=
						//stmt.executeQuery();
				
				System.out.println("success");				
				
				} catch(Exception e){
				
				}*/
	
	
	
		/*    Class.forName("oracle.jdbc.driver.OracleDriver");  
		    Connection con=DriverManager.getConnection(  
		    "jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","SYSTEM");  
		      
		    CallableStatement stmt=con.prepareCall("{call insertRADMIN1(?,?,?,?)}");  
		    stmt.setString(1,"3");  
		    stmt.setString(2,"abc"); 
		    stmt.setString(3,"abc"); 
		    stmt.setString(4,"1213");
		    stmt.execute();  
		      */
		  //  System.out.println("success");  
		    //}  
	

