package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.dtd.dao.BookDAOImpl;
import com.dtd.dao.CommonDAO;
import com.dtd.dto.BookDTO;

public class BookServiceImpl implements CommonService<BookDTO> {
	private CommonDAO<BookDTO> bookdao;

//	private BookDAOImpl bookdao = new BookDAOImpl();

	
	public BookServiceImpl() {
		super();
		this.bookdao = new BookDAOImpl();
	}
	
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
	public BookDTO get(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.get(id);
	}

}
