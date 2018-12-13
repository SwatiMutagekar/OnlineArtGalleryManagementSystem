package adminlog;

	import java.io.IOException;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.*;

	public class adlogin extends HttpServlet {
		
		private static final long serialVersionUID = 1L;
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			String aname=req.getParameter("aname");
			String apass=req.getParameter("apass");
			System.out.println("got parameters");
			if((aname.equals("swati")&&apass.equals("swati"))||(aname.equals("jyoti")&&apass.equals("jyoti")))
			{
				getServletContext().getRequestDispatcher("/adminhome.jsp").forward(req,resp);
			}
			else
			{
				getServletContext().getRequestDispatcher("/adminlogin.jsp").include(req,resp);
				}
		
		}
	}


