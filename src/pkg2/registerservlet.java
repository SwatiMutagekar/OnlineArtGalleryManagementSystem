package pkg2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daomvc;

import model.modelmvc;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class registerservlet extends HttpServlet {
private static final long serialVersionUID=1L;
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String uname=req.getParameter("uname");
	String pass=req.getParameter("pass");
	String rpass=req.getParameter("rpass");
	String fname=req.getParameter("fname");
	String lname=req.getParameter("lname");
	String email=req.getParameter("email");
	String phone=req.getParameter("phone");
	
	if(uname==""||pass==""||fname==""||lname==""||email==""||phone==""||rpass=="")
	{
		req.setAttribute("msg","All fields are mandatory");
		getServletContext().getRequestDispatcher("/register.jsp").forward(req, resp);
	}
	else{
	
	
	modelmvc m=new modelmvc();
	
	m.setUname(uname);
	m.setPass(pass);
	m.setFname(fname);
	m.setLname(lname);
	m.setEmail(email);
	m.setPhone(phone);
	
	
	
	 try{
		 String cid1="0";
		 String cid=("select cid_sequence.nextval from dual");
		 ResultSet rs;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
		PreparedStatement pst=(PreparedStatement)con.prepareStatement(cid);
		rs=pst.executeQuery();
		
		while(rs.next())
		{
			cid1=rs.getString(1);
		}
	
	
	
	
	
	
	
	
	String sql=("insert into myregister values(?,?,?,?,?,?,?)");
	
		int i = daomvc.registeruser(m,sql,cid1);
	
	
	if(i!=0)
	{
		System.out.println("value is inserted");
		
		req.setAttribute("msg","Registration successfully done." +
				"" +
				"" +
				"Your Customer-id is:" + cid1 + "\n"+" Please note it for your future purchases.");
		
		getServletContext().getRequestDispatcher("/login.jsp").forward(req,resp);
	}
	else
	{
		System.out.println("value is not inserted");
	}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	
	
	}	
}
	

