package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public interface BorrowService<T> {
	ArrayList<T> list(String searchValue, String startDay, String endDay) throws SQLException;

	boolean add(T data) throws SQLException;
	
	ArrayList<T> findList(String searchValue, String startDay, String endDay) throws SQLException;
}
