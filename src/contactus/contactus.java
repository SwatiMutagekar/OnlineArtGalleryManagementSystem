package contactus;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class contactus extends HttpServlet {
	private static final long serialVersionUID=1L;
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		
		String phone=req.getParameter("phone");
		String subject=req.getParameter("subject");
		String msg=req.getParameter("msg");
		
		if(name==""||email==""||phone==""||subject==""||msg=="")
		{
			req.setAttribute("msg","All fields are mandatory");
			getServletContext().getRequestDispatcher("/contactus.jsp").forward(req, resp);
		}
		else
		{
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		
			PreparedStatement pst=(PreparedStatement)con.prepareStatement("insert into contactus values(?,?,?,?,?)");
			pst.setString(1,name);
			pst.setString(2,email);
			pst.setString(3,phone);
			pst.setString(4,subject);
			pst.setString(5,msg);
			int i=pst.executeUpdate();
		
		
		
		
		if(i!=0)
		{
			System.out.println("value is inserted");
			req.setAttribute("msg","Your response is recorded");
			getServletContext().getRequestDispatcher("/responserecorded.jsp").forward(req,resp);
		}
		else
		{
			System.out.println("value is not inserted");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		}
	}

