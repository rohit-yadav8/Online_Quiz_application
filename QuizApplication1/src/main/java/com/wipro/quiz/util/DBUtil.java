package com.wipro.quiz.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	public static Connection getDBConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/quizapplication";
			String user = "root";
			String password = "root";
			connection = DriverManager.getConnection(url, user, password);
		} catch(Exception e) {
			System.out.println(e);
		}
		return connection;	
	}
	

}