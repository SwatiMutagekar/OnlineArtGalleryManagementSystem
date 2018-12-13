package pkg2;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daomvc;

import model.modelmvc;

public class loginservlet extends HttpServlet {
	private static final long serialVersionUID=1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		if(uname.equals(null)||uname==""&&pass.equals(null)||pass=="")
		{
			req.setAttribute("msg","All fields are mandatory");
			getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
		}
		else
		{
			modelmvc m=new modelmvc();
			m.setUname(uname);
			m.setPass(pass);
			String sql="select * from myregister where uname=? and pass=?";
	        ResultSet rs;
			try {
				rs = daomvc.loginuser(m,sql);
			
	        
	        	if(rs.next())
	        	{
	        		getServletContext().getRequestDispatcher("/home.jsp").forward(req, resp);
	        		
	        		
	        	}
	        	else
	        	{
	        		getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
	        	}
	        }
			
	        catch(SQLException | ClassNotFoundException e)
	        {
	        	e.printStackTrace();
	        }
	        
		}
	}
	

}
