package com.dtd.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.dtd.dto.StudentDTO;

public class StudentDAOImpl implements CommonDAO<StudentDTO> {



	@Override
	public boolean add(StudentDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(StudentDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public StudentDTO get(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<StudentDTO> list() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean inUsed(int id) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

}
