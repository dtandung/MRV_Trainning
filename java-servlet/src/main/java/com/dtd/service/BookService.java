package com.dtd.service;

import java.sql.SQLException;

public interface BookService {
  int checkNameBook(String name) throws SQLException;
}
