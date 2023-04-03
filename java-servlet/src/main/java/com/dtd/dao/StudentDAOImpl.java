package com.dtd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.dtd.dto.BookDTO;
import com.dtd.dto.StudentDTO;

public class StudentDAOImpl implements CommonDAO<StudentDTO> {

	private Connection jdbcConnection;
	
	public StudentDAOImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean add(StudentDTO data) throws SQLException {
		String sqlInsert = "insert into students (Name,Age,Gender) VALUES (?, ?, ?)";
		jdbcConnection = MysqlCon.connectDb();
		PreparedStatement statement = jdbcConnection.prepareStatement(sqlInsert);
		statement.setString(1, data.getName());
		statement.setInt(2, data.getAge());
		statement.setBoolean(3, data.isGender());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		MysqlCon.disconnect(jdbcConnection);
		return rowInserted;
	}

	@Override
	public boolean update(StudentDTO data) throws SQLException {
		String sql = "UPDATE students SET Name = ?, Age= ?, Gender = ?  WHERE StudentID = ?";
		jdbcConnection = MysqlCon.connectDb();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setString(1, data.getName());
		statement.setInt(2, data.getAge());
		statement.setBoolean(3, data.isGender());
		statement.setInt(4, data.getStudentID());
		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		MysqlCon.disconnect(jdbcConnection);
		return rowUpdated;
	}

	@Override
	public boolean delete(int id) throws SQLException {
		String sql = "DELETE FROM students where StudentID = ?";
		
		jdbcConnection = MysqlCon.connectDb();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		
		boolean rowDeleted = statement.executeUpdate() > 0;
		statement.close();
		MysqlCon.disconnect(jdbcConnection);
		return rowDeleted;	
	}

	@Override
	public StudentDTO get(int id) throws SQLException {
		StudentDTO stu = null;
		String sql = "SELECT * FROM students WHERE StudentID = ?";
		
		jdbcConnection = MysqlCon.connectDb();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {
			
			int StudentID = resultSet.getInt("StudentID");
			String Name = resultSet.getString("Name");
			int Age = resultSet.getInt("Age");
			boolean Gender = resultSet.getBoolean("Gender");
			
			stu = new StudentDTO(StudentID, Name, Age, Gender);
		}
		
		resultSet.close();
		statement.close();
		
		MysqlCon.disconnect(jdbcConnection);
		
		return stu;
	}

	@Override
	public ArrayList<StudentDTO> list() throws SQLException {
		ArrayList<StudentDTO> liststu = new ArrayList<StudentDTO>();
		
		String sql = "SELECT * FROM students ORDER BY StudentID DESC";
		
		jdbcConnection = MysqlCon.connectDb();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		ResultSet resultSet = statement.executeQuery();
		
		while (resultSet.next()) {
			int StudentID = resultSet.getInt("StudentID");
			String Name = resultSet.getString("Name");
			int Age = resultSet.getInt("Age");
			boolean Gender = resultSet.getBoolean("Gender");
			
			StudentDTO stu = new StudentDTO(StudentID, Name, Age, Gender);
			liststu.add(stu);
		}
		
		resultSet.close();
		statement.close();
		
		MysqlCon.disconnect(jdbcConnection);
		
		return liststu;
	}

	@Override
	public boolean inUsed(int id) throws SQLException {
		jdbcConnection = MysqlCon.connectDb();
		String sql = "select count(StudentID) as SoLuong from borrows where StudentID = ?";
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		ResultSet resultSet = statement.executeQuery();
		int soluong =0;
		while(resultSet.next()) {
			soluong = resultSet.getInt("SoLuong");
		}
		resultSet.close();
		statement.close();
		
		MysqlCon.disconnect(jdbcConnection);
		if(soluong == 0) return true;
		else 
			return false;
	}




}
