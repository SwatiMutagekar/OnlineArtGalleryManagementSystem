package shipping;
import cart.newcart;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class shipping extends HttpServlet {
	newcart c= new newcart();
	 int oid;
	
	
	private static final long serialVersionUID=1L;
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String hno=req.getParameter("hno");
		String street=req.getParameter("street");
		String city=req.getParameter("city");
		String pincode=req.getParameter("pincode");
		String state=req.getParameter("state");
		String country=req.getParameter("country");
		oid=(Integer.valueOf(c.returnoid()))-1;
		System.out.println(oid);
		
		
		if(name==""||street==""||hno==""||city==""||state==""||country==""||pincode=="")
		{
			req.setAttribute("msg","All fields are mandatory");
			getServletContext().getRequestDispatcher("/shipping.jsp").forward(req, resp);
		}
		else{
		System.out.println(oid);
		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println(oid);
				PreparedStatement pst=(PreparedStatement)con.prepareStatement("update shipping set name=?,hno=?,street=?,city=?,pincode=?,state=?,country=? where oid=?");
				pst.setString(1,name);
				pst.setString(2,hno);
				pst.setString(3,street);
				pst.setString(4,city);
				pst.setString(5,pincode);
				pst.setString(6,state);
				pst.setString(7,country);
				System.out.println(oid);
				pst.setInt(8,oid);
				pst.executeQuery();
				int i=pst.executeUpdate();
			if(i!=0)
			{
				System.out.println("value is inserted");
				
				getServletContext().getRequestDispatcher("/ordersuccess.jsp").forward(req,resp);
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
