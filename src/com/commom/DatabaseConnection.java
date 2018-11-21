package com.commom;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	public static Connection openConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection
					("jdbc:sqlserver://localhost:1433;database=DATA1;user=sa;password=123456");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
}
