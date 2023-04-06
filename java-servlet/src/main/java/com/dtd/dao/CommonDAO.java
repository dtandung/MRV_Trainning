package com.dtd.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.dtd.dto.BorrowDTO;

public interface CommonDAO<T> {
	ArrayList<T> list() throws SQLException;

	boolean add(T data) throws SQLException;

	boolean update(T data) throws SQLException;

	boolean delete(int id) throws SQLException;

	T get(int id) throws SQLException;

	boolean inUsed(int id) throws SQLException;
	
}
