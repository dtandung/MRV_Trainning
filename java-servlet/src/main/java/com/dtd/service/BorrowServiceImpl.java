package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.dtd.dao.BorrowDAO;
import com.dtd.dao.BorrowDAOImpl;
import com.dtd.dao.CommonDAO;
import com.dtd.dto.BorrowDTO;

public class BorrowServiceImpl implements BorrowService<BorrowDTO>{
	private BorrowDAO<BorrowDTO> borrowdao;
	
	
	public BorrowServiceImpl() {
		this.borrowdao = new BorrowDAOImpl(); 
	}

	@Override
	public ArrayList<BorrowDTO> list() throws SQLException {
		// TODO Auto-generated method stub
		return this.borrowdao.list();
	}

	@Override
	public boolean add(BorrowDTO data) throws SQLException {
		// TODO Auto-generated method stub
		if(data.getQuantity() == 0) 
			return false;
		return this.borrowdao.add(data);
	}



	
	@Override
	public ArrayList<BorrowDTO> findList(String searchValue, String startDay, String endDay) throws SQLException {
		// TODO Auto-generated method stub
		return this.borrowdao.findList(searchValue, startDay, endDay);
	}

}
