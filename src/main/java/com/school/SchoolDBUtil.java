package com.school;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SchoolDBUtil {
	public static boolean isSuccess;
	public static Connection con = null;
	public static Statement stmt = null;
	public static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Admin> getAdmin(String username){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String userName = rs.getString(2);
				String password = rs.getString(3);
				
				Admin a = new Admin(id,userName, password);
				admin.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
