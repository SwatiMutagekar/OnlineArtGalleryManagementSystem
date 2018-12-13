package cart;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cart1
 */



public class newcart extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
	String oid;
	String oidpass;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public newcart () {
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//PrintWriter pw=resp.getWriter();
		//pw.println("<B>" +"Hello");
		
	
		
		
		
		
		//String cid=req.getParameter("cid");
		
		String cid=req.getParameter("cid");
		String artno=req.getParameter("artno");
		String oamt=req.getParameter("price");
		//pw.println("<B>" +cid);
		//pw.println("<B>"+artno);
				//pw.println("<B>"+oamt);

String category=null;
		
		GregorianCalendar gc=new GregorianCalendar(); 
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MMM-yy");
		String odate= sdf.format(gc.getTime());
		
		//String currentdate="select sysdate from dual;";
	
		String s1=req.getParameter("s1");
	System.out.println(s1);
		
		if(cid=="")
		{
			
			req.setAttribute("msg","Customer-id is mandatory");
			getServletContext().getRequestDispatcher("/cart.jsp").forward(req, resp);
		}
		else{
			ResultSet rs;
			try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println(con);
			
			
			/*Statement sobj=con.createStatement();
			ResultSet rs1=sobj.executeQuery(currentdate);
			while(rs1.next())
			{
			odate=rs1.getString(1);
			System.out.println(odate);
			}*/
			
			
			
			
			PreparedStatement pst=(PreparedStatement)con.prepareStatement("select * from myregister where cid=?");
				
				pst.setString(1,cid);
				rs=pst.executeQuery();
				System.out.println(cid);
				
				
				
				
			while(rs.next())
			{
				String s=rs.getString(1);
				System.out.println(s);
				if(s.equals(cid))
				{
					System.out.println("value is inserted");
					
					
					PreparedStatement pst2=(PreparedStatement)con.prepareStatement("select category from allpaintings where artno=?");
					pst2.setString(1,artno);
					
					ResultSet rs3=pst2.executeQuery();
					
					 while(rs3.next()){
					
					
					
					
					 category=rs3.getString(1);
					
					 }
					
					
					
					
					
					
					
					
					//PreparedStatement pst2=(PreparedStatement)con.prepareStatement("");*/
					
					PreparedStatement pst1=(PreparedStatement)con.prepareStatement("insert into orderdetails values(?,?,?,?,?,?,'1')");
					
					String oid=returnoid();
					System.out.println(oid);
					pst1.setString(1,oid);
					pst1.setString(2,cid);
					pst1.setString(3,artno);//
					pst1.setString(4,category);//
					pst1.setString(5,oamt);//
					pst1.setString(6,odate);
					
					
					//pst.setString(1,cid);
					rs=pst1.executeQuery();
					
PreparedStatement pst4=(PreparedStatement)con.prepareStatement("insert into shipping values(?,?,null,null,null,null,null,null,null)");
					
					
					pst4.setString(1,oid);
					pst4.setString(2,cid);
					rs=pst4.executeQuery();	
					
				
					getServletContext().getRequestDispatcher("/shipping.jsp").forward(req,resp);
				}
			}

				System.out.println("value is not inserted");
				getServletContext().getRequestDispatcher("/cart.jsp").include(req,resp);
			}
			
			
		
			 catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
			
	}
	public String returnoid()
	{
	try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	
		Statement sobj = con.createStatement();
		ResultSet rs2=sobj.executeQuery("select oid_sequence.nextval from dual");
		while(rs2.next())
		{
			oid=rs2.getString(1);
			oidpass=oid;
			
		}
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return oidpass;
	}

}
