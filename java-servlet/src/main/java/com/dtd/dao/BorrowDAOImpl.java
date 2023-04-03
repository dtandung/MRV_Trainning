package com.dtd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.dtd.dto.BorrowDTO;

public class BorrowDAOImpl implements BorrowDAO<BorrowDTO> {
	private Connection jdbcConnection;

	@Override
	public ArrayList<BorrowDTO> findList(String searchValue, String startDay, String endDay) throws SQLException {
		ArrayList<BorrowDTO> listbor = new ArrayList<BorrowDTO>();
		String sql = "select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
				+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
				+ "left join students as st on br.StudentID = st.StudentID "
				+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)"
				+ "and (br.BorrowDate between ? AND ?)";

		String sql2 = " select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
				+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
				+ "left join students as st on br.StudentID = st.StudentID "
				+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)"
				+ "and (br.BorrowDate = ? )";

		String sql3 = " select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
				+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
				+ "left join students as st on br.StudentID = st.StudentID "
				+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)";
//				+ "and (br.BorrowDate = ? )";

		jdbcConnection = MysqlCon.connectDb();

		if (startDay != "" && endDay != "") {
			PreparedStatement statement = jdbcConnection.prepareStatement(sql);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");

			statement.setString(5, startDay);
			statement.setString(6, endDay);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);

		} else if (startDay != "" && endDay == "") {
			PreparedStatement statement = jdbcConnection.prepareStatement(sql2);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");
			statement.setString(5, startDay);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);
		} else {
			PreparedStatement statement = jdbcConnection.prepareStatement(sql3);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");
//			statement.setString(5 , searchValue );

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);
		}

		return listbor;

	}

	@Override
	public ArrayList<BorrowDTO> list(String searchValue, String startDay, String endDay) throws SQLException {
		ArrayList<BorrowDTO> listbor = new ArrayList<BorrowDTO>();

		jdbcConnection = MysqlCon.connectDb();
		if (searchValue != "")
			searchValue = "%" + searchValue + "%";

		if (startDay != "" && endDay != "") {
			String sql = "select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
					+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
					+ "left join students as st on br.StudentID = st.StudentID "
					+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)"
					+ "and (br.BorrowDate between ? AND ?)";
			PreparedStatement statement = jdbcConnection.prepareStatement(sql);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");

			statement.setString(5, startDay);
			statement.setString(6, endDay);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);

		} else if (startDay != "" && endDay == "") {
			String sql2 = " select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
					+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
					+ "left join students as st on br.StudentID = st.StudentID "
					+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)"
					+ "and (br.BorrowDate = ? )";
			PreparedStatement statement = jdbcConnection.prepareStatement(sql2);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");
			statement.setString(5, startDay);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);
		}else {
			String sql3 = " select br.BorrowID, br.BorrowDate, st.StudentID, bo.BookID, br.Quantity "
					+ "from borrows as br left join books as bo on br.BookID = bo.BookID "
					+ "left join students as st on br.StudentID = st.StudentID "
					+ "where (st.StudentID like ? or st.Name like ?  or bo.BookID like ? or bo.Name like ?)";
			PreparedStatement statement = jdbcConnection.prepareStatement(sql3);
			statement.setString(1, searchValue);
			statement.setString(2, "%" + searchValue + "%");
			statement.setString(3, searchValue);
			statement.setString(4, "%" + searchValue + "%");

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int BorrowID = resultSet.getInt("BorrowID");
				int StudentID = resultSet.getInt("StudentID");
				int BookID = resultSet.getInt("BookID");
				int Quantity = resultSet.getInt("Quantity");
				Date BorrowDate = resultSet.getDate("BorrowDate");

				BorrowDTO bor = new BorrowDTO(BorrowID, StudentID, BookID, Quantity, BorrowDate);
				listbor.add(bor);
			}
			resultSet.close();
			statement.close();

			MysqlCon.disconnect(jdbcConnection);
		}

		return listbor;
	}

	@Override
	public boolean add(BorrowDTO data) throws SQLException {
		String sqlInsert = "insert into borrows(StudentID, BookID, Quantity, BorrowDate) values (?,?,?,?)";
		jdbcConnection = MysqlCon.connectDb();
		PreparedStatement statement = jdbcConnection.prepareStatement(sqlInsert);
		statement.setInt(1, data.getStudentID());
		statement.setInt(2, data.getBookID());
		statement.setInt(3, data.getQuantity());
		statement.setDate(4, (java.sql.Date) data.getBorrowDate());

		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		MysqlCon.disconnect(jdbcConnection);
		return rowInserted;
	}

}
