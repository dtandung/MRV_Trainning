package com.demo.core.lab6;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;

public class KetNoi {
	public static Connection con;

	public static void KetNoi()  {
		String url = "jdbc:mysql://localhost:3306/quanlymuavetau";
		String username = "root";
		String password = "123456";

		  try {
		      Class.forName("com.mysql.jdbc.Driver");
		      con = DriverManager.getConnection(url, username, password);
		     // System.out.println("connect successfully!");
		      
		  } catch (Exception ex) {
		      System.out.println("connect failure!");
		      ex.printStackTrace();
		  }
	}

	public static void main(String[] args) {
		try {
	        KetNoi kn = new KetNoi();
	        kn.KetNoi();
	      } catch (Exception ex) {
	          ex.printStackTrace();
	      }
	  }
}
