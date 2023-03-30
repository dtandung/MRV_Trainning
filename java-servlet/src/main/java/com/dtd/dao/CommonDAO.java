package com.dtd.dao;

import java.sql.SQLException;
import java.util.ArrayList;

public interface CommonDAO <T> {
	ArrayList<T> list() throws SQLException;
	int add (T data) throws SQLException;
	boolean update (T data) throws SQLException;
	boolean delete (T data) throws SQLException;
	T get(int id) throws SQLException;
}
