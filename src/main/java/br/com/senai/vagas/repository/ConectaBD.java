package br.com.senai.vagas.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectaBD {
	private static Connection conn = null;
	private static ConectaBD conectaBD = null;
	
	String url = "jdbc:mysql://localhost:3306/empregos";
	String username = "root";
	String password = "bethCachorra";
	String driver = "com.mysql.cj.jdbc.Driver";
	
	private ConectaBD() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static ConectaBD getInstance() {
		if (conectaBD == null) {
			conectaBD = new ConectaBD();
		}
		return conectaBD;
	}
	
	public Connection getConnection() {
			try {
				if(conn == null || conn.isClosed()) {
					conn = DriverManager.getConnection(url, username, password);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return conn;
	}
	
	public void finalizar() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
