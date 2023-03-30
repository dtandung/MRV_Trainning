package com.dtd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dtd.dto.BookDTO;
//import com.gl.demo.dto.ProductDTO;

public class BookDAOImpl implements CommonDAO<BookDTO> {
	private Connection jdbcConnection;


	@Override
	public ArrayList<BookDTO> list() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int add(BookDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean update(BookDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(BookDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public BookDTO Get(int id) throws SQLException {
		// TODO Auto-generated method stub
		BookDTO bok = null;
		String sql = "SELECT * FROM books WHERE BookID = ?";
		
		jdbcConnection = MysqlCon.connectDb();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			
			int BookID = resultSet.getInt("BookID");
			String Name = resultSet.getString("Name");
			int TotalPage = resultSet.getInt("TotalPage");
			String Type = resultSet.getString("Type");
			int Quantity = resultSet.getInt("Quantity");
			
			bok = new BookDTO(BookID, Name, TotalPage, Type, Quantity);
		}
		
		resultSet.close();
		statement.close();
		MysqlCon.disconnect(jdbcConnection);
		
		return bok;
	}

}
