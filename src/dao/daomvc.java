
package dao;



import java.sql.*;

import model.*;
public class daomvc {
	public static int registeruser(modelmvc m,String sql,String cid1) throws SQLException, ClassNotFoundException
	{
		int i=0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		try{
			PreparedStatement pst=(PreparedStatement)con.prepareStatement(sql);
			
			pst.setString(1,cid1);
			
			
			
			pst.setString(2,m.getUname());
			pst.setString(3,m.getPass());
			pst.setString(4,m.getFname());
			pst.setString(5,m.getLname());
			pst.setString(6,m.getEmail());
			pst.setString(7,m.getPhone());
			i=pst.executeUpdate();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public static ResultSet loginuser(modelmvc m,String sql) throws SQLException, ClassNotFoundException
	{
		ResultSet rs=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		try{
			System.out.println("inside try");
			java.sql.PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,m.getUname());
			pst.setString(2,m.getPass());
			rs=pst.executeQuery();
			System.out.println("execute query");
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}

}
