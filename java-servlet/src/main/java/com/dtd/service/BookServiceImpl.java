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
		this.bookdao = new BookDAOImpl();
	}
	
	@Override
	public ArrayList<BookDTO> list() throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.list();
	}

	@Override
	public boolean add(BookDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.add(data);
	}

	@Override
	public boolean update(BookDTO data) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.update(data);
	}

	@Override
	public boolean delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.delete(id);
	}

	@Override
	public BookDTO get(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.get(id);
	}

	@Override
	public boolean inUsed(int id) throws SQLException {
		// TODO Auto-generated method stub
		return this.bookdao.inUsed(id);
	}

}
