package com.demo.core.lab6;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAOImpl implements CustomerDAO {


	@Override
	public Customer findCustomerId(int cMND) {
		// TODO Auto-generated method stub
		Customer cus = new Customer();
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String mysql = "select * from quanlymuavetau.customer where CMND = ?";
			PreparedStatement stmt = kn.con.prepareStatement(mysql);
			stmt.setInt(1, cMND);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				int CMND = rs.getInt("cMND");
				String TenKhachHang = rs.getString("TenKhachHang");
				String GaDen = rs.getString("GaDen");
				double GiaTien = rs.getDouble("GiaTien");
				 cus = new Customer(CMND, TenKhachHang, GaDen, GiaTien);
			}
			rs.close();
			kn.con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return cus;
	}

	@Override
	public ArrayList<Customer> getAllCustomer() {
		ArrayList<Customer> ds = new ArrayList<Customer>();
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String mysql = "select * from customer";
			Statement stmt = kn.con.createStatement();
			 ResultSet rs = stmt.executeQuery(mysql);
			// b3: luu all du lieu vao mang ds
			while (rs.next()) {
				 int CMND = rs.getInt("CMND");
				 String TenKhachHang = rs.getString("TenKhachHang");
				 String GaDen = rs.getString("GaDen");
				 double GiaTien = rs.getDouble("GiaTien");
				 ds.add(new Customer(CMND, TenKhachHang, GaDen, GiaTien));
			}
			// b4: dong ket noi
			rs.close();
			kn.con.close();
			return ds;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean deleteCustomer(int cMND) {
		// TODO Auto-generated method stub
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String mysql = "delete from quanlymuavetau.customer where CMND = ?";
			PreparedStatement stmt = kn.con.prepareStatement(mysql);
			stmt.setInt(1, cMND);
			stmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int addNewCustomer(int cMND, String tenKhachHang, String gaDen, double giaTien) {
		// TODO Auto-generated method stub
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String mysql = "insert into quanlymuavetau.customer (CMND, TenKhachHang, GaDen, GiaTien) values(?, ?,?, ?)";
			PreparedStatement stmt = kn.con.prepareStatement(mysql);
			stmt.setInt(1, cMND);
			stmt.setString(2, tenKhachHang);
			stmt.setString(3, gaDen);
			stmt.setDouble(4, giaTien);
			int rs = stmt.executeUpdate();
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public boolean editCustomer(int cMND, String tenKhachHang, String gaDen, double giaTien) {
		// TODO Auto-generated method stub
		try {
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			String mysql = "update quanlymuavetau.customer set TenKhachHang = ?, GaDen = ?, GiaTien= ? where CMND =?";
			PreparedStatement stmt = kn.con.prepareStatement(mysql);
			stmt.setString(1,tenKhachHang);
			stmt.setString(2, gaDen);
			stmt.setDouble(3, giaTien);
			stmt.setInt(4, cMND);
			stmt.executeUpdate();
			kn.con.close();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

}
