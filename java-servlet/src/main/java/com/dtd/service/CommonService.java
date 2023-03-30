package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;

public interface CommonService<T> {
	ArrayList<T> list() throws SQLException;

	int add(T data) throws SQLException;

	boolean update(T data) throws SQLException;

	boolean delete(T data) throws SQLException;

	T Get(int id) throws SQLException;
}
