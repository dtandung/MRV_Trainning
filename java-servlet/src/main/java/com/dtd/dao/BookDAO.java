package com.dtd.dao;

import java.sql.SQLException;

public interface BookDAO {
    int checkNameBook(String name) throws SQLException;
}
