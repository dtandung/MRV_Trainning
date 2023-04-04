package com.dtd.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public interface BorrowDAO <T> {
	ArrayList<T> list(String searchValue, String startDay, String endDay) throws SQLException;

	boolean add(T data) throws SQLException;
	
	boolean updateQuantity (int id , int quantity) throws SQLException;
}
