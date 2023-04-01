package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.dtd.dao.CommonDAO;
import com.dtd.dao.StudentDAOImpl;
import com.dtd.dto.StudentDTO;

public class StudentServiceImpl  implements CommonService<StudentDTO>{
	
	private CommonDAO<StudentDTO> studentdao;
	
	public StudentServiceImpl() {
		this.studentdao = new StudentDAOImpl();
	}

	@Override
	public ArrayList<StudentDTO> list() throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.list();
	}

	@Override
	public boolean add(StudentDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.add(data);
	}

	@Override
	public boolean update(StudentDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.update(data);
	}

	@Override
	public boolean delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.delete(id);
	}

	@Override
	public StudentDTO get(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.get(id);
	}

	@Override
	public boolean inUsed(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.studentdao.inUsed(id);
	}

}
