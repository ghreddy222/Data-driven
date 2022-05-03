package imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconn.Dbconn;
import bean.Employaddbean;
import bean.Employregbean;
import inter.Inter;

public class Imple implements Inter {
	
	Connection con;

	@Override
	public int ureg(Employregbean ur) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `cyber`.`empregtbl` VALUES(id,?,?,?,?)");
		 			ps.setString(1,ur.getName());
		 				ps.setString(2,ur.getPhoeneno());
		 				ps.setString(3,ur.getEmail());
		 				ps.setString(4,ur.getPassword());
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}

	@Override
	public boolean ulog(Employregbean ur) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		 con=Dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `cyber`.`empregtbl` where email=? and pass=?");
				ps.setString(1,ur.getEmail());
				ps.setString(2,ur.getPassword());
				ResultSet rs=ps.executeQuery();
				log=rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

		
	}

	@Override
	public int empaddinter(Employaddbean eb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `cyber`.`empadd` VALUES(id,?,?,?,?,?,?,?,?)");
		 				ps.setString(1,eb.getLocation());
		 				ps.setString(2,eb.getArea());
		 				ps.setString(3,eb.getSystem());
		 				ps.setString(4,eb.getDate());
		 				ps.setString(5,eb.getOperatsyst());
		 				ps.setString(6,eb.getFirewal());
		 				ps.setString(7,eb.getDbsetup());
		 				ps.setString(8,eb.getHarddisk());
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;
		
	}

}
