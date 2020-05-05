package com.furkankara;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class _02_JDBCBaglantisiMySQL {
	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			// new com.mysql.jdbc.Driver();
			Class.forName("com.mysql.jdbc.Driver").getConstructors(); //(surum degistiginden getConstructor() )kullan dene
			// conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/denemevt?user=katerina&password=1453");
			
			String connectionUrl = "jdbc:mysql://localhost:3306/university";
			String connectionUser = "root";
			String connectionPassword = "";
			conn = DriverManager.getConnection(connectionUrl, connectionUser, connectionPassword);
			
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery("SELECT * FROM personel");
			
			while (rs.next()) {
				int personelid = rs.getInt("personelid");
				String personeladi = rs.getString("personeladi");
				String personelsoyadi = rs.getString("personelsoyadi");
				
				System.out.println("ID: " + personelid + ", ADI : " + personeladi + ", SOYADI: " + personelsoyadi);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
