package com.demo.core.lab6;

import java.util.ArrayList;
import java.util.List;


public interface CustomerDAO {
		int addNewCustomer(int cMND, String tenKhachHang, String gaDen, double giaTien);
		boolean editCustomer(int cMND, String tenKhachHang, String gaDen, double giaTien);
		Customer findCustomerId(int cMND);
		ArrayList<Customer> getAllCustomer();
	    boolean deleteCustomer(int cMND);
}
