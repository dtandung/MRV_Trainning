package com.dtd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dtd.dto.BookDTO;
// import com.gl.demo.dto.ProductDTO;


public class BookDAOImpl implements CommonDAO<BookDTO>, BookDAO {
  private Connection jdbcConnection;


  public BookDAOImpl() {
    super();
    // TODO Auto-generated constructor stub
  }



  @Override
  public ArrayList<BookDTO> list() throws SQLException {
    // TODO Auto-generated method stub
    ArrayList<BookDTO> listbook = new ArrayList<BookDTO>();

    String sql = "SELECT * FROM books ORDER BY BookID DESC";

    jdbcConnection = MysqlCon.connectDb();

    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      int BookID = resultSet.getInt("BookID");
      String Name = resultSet.getString("Name");
      int TotalPage = resultSet.getInt("TotalPage");
      String Type = resultSet.getString("Type");
      int Quantity = resultSet.getInt("Quantity");

      BookDTO bok = new BookDTO(BookID, Name, TotalPage, Type, Quantity);
      listbook.add(bok);
    }

    resultSet.close();
    statement.close();

    MysqlCon.disconnect(jdbcConnection);

    return listbook;
  }

  @Override
  public boolean add(BookDTO data) throws SQLException {
    String sqlInsert = "insert into books (Name,TotalPage,Type,Quantity) VALUES (?, ?, ?, ?)";
    jdbcConnection = MysqlCon.connectDb();
    PreparedStatement statement = jdbcConnection.prepareStatement(sqlInsert);
    statement.setString(1, data.getName());
    statement.setInt(2, data.getTotalPage());
    statement.setString(3, data.getType());
    statement.setInt(4, data.getQuantity());

    boolean rowInserted = statement.executeUpdate() > 0;
    statement.close();
    MysqlCon.disconnect(jdbcConnection);
    return rowInserted;
  }

  @Override
  public boolean update(BookDTO data) throws SQLException {
    String sql =
        "UPDATE books SET Name = ?, TotalPage = ?, Type = ?, Quantity = ?  WHERE BookID = ?";
    jdbcConnection = MysqlCon.connectDb();

    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    statement.setString(1, data.getName());
    statement.setInt(2, data.getTotalPage());
    statement.setString(3, data.getType());
    statement.setInt(4, data.getQuantity());
    statement.setInt(5, data.getBookID());
    boolean rowUpdated = statement.executeUpdate() > 0;
    statement.close();
    MysqlCon.disconnect(jdbcConnection);
    return rowUpdated;
  }

  @Override
  public boolean delete(int id) throws SQLException {
    String sql = "DELETE FROM books where BookID = ?";

    jdbcConnection = MysqlCon.connectDb();

    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    statement.setInt(1, id);

    boolean rowDeleted = statement.executeUpdate() > 0;
    statement.close();
    MysqlCon.disconnect(jdbcConnection);
    return rowDeleted;
  }

  @Override
  public BookDTO get(int id) throws SQLException {
    // TODO Auto-generated method stub
    BookDTO bok = null;
    String sql = "SELECT * FROM books WHERE BookID = ?";

    jdbcConnection = MysqlCon.connectDb();

    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    statement.setInt(1, id);

    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {

      int BookID = resultSet.getInt("BookID");
      String Name = resultSet.getString("Name");
      int TotalPage = resultSet.getInt("TotalPage");
      String Type = resultSet.getString("Type");
      int Quantity = resultSet.getInt("Quantity");

      bok = new BookDTO(BookID, Name, TotalPage, Type, Quantity);
    }

    resultSet.close();
    statement.close();

    MysqlCon.disconnect(jdbcConnection);

    return bok;
  }

  @Override
  public boolean inUsed(int id) throws SQLException {
    // TODO Auto-generated method stub
    jdbcConnection = MysqlCon.connectDb();
    String sql = "select count(BookID) as SoLuong from borrows where BookID = ?";
    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    statement.setInt(1, id);
    ResultSet resultSet = statement.executeQuery();
    int soluong = 0;
    while (resultSet.next()) {
      soluong = resultSet.getInt("SoLuong");
    }
    resultSet.close();
    statement.close();

    MysqlCon.disconnect(jdbcConnection);
    if (soluong == 0)
      return true;
    else
      return false;
  }

  @Override
  public int checkNameBook(String name) throws SQLException {
    // TODO Auto-generated method stub
    jdbcConnection = MysqlCon.connectDb();
    String sql =
        "SELECT COUNT(name) AS Name FROM Bookstore.books where UPPER(books.name) = UPPER(?)";
    PreparedStatement statement = jdbcConnection.prepareStatement(sql);
    statement.setString(1, name);
    ResultSet resultSet = statement.executeQuery();
    while (resultSet.next()) {
      return resultSet.getInt(1);
    }
    resultSet.close();
    statement.close();

    MysqlCon.disconnect(jdbcConnection);
    return 0;
  }
}
