package com.dtd.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import com.dtd.dao.BookDAO;
import com.dtd.dao.BookDAOImpl;
import com.dtd.dao.CommonDAO;
import com.dtd.dto.BookDTO;

public class BookServiceImpl implements CommonService<BookDTO>, BookService {
  private CommonDAO<BookDTO> bookdao;
  private BookDAO bookdao2;

  // private BookDAOImpl bookdao = new BookDAOImpl();


  public BookServiceImpl() {
    this.bookdao = new BookDAOImpl();
    this.bookdao2 = new BookDAOImpl();
  }

  @Override
  public ArrayList<BookDTO> list() throws SQLException {
    // TODO Auto-generated method stub
    return this.bookdao.list();
  }

  @Override
  public boolean add(BookDTO data) throws SQLException {
    // TODO Auto-generated method stub
    int check = checkNameBook(data.getName());
    if (check != 0)
      return false;
    return this.bookdao.add(data);
  }

  @Override
  public boolean update(BookDTO data) throws SQLException {
    int check = checkNameBook(data.getName());
    if (check != 0 || !inUsed(data.getBookID()))
      return false;
    return this.bookdao.update(data);
  }

  @Override
  public boolean delete(int id) throws SQLException {
    if(!inUsed(id))
      return false;
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

  @Override
  public int checkNameBook(String name) throws SQLException {
    // TODO Auto-generated method stub
    return this.bookdao2.checkNameBook(name);
  }

  public static void main(String[] args) {
    BookServiceImpl bookImpl = new BookServiceImpl();
    try {
      int check = bookImpl.checkNameBook("darK Nhan Tam 3");
      System.out.println("count"+check);
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }

}
