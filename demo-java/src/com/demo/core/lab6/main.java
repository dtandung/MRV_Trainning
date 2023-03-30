package com.demo.core.lab6;

import java.util.ArrayList;
import java.util.Scanner;

public class main {

	public static void displayCustomer() {
		try {
			CustomerDAOImpl cus = new CustomerDAOImpl();
			ArrayList<Customer> ds = new ArrayList<Customer>();
			ds = cus.getAllCustomer();
			System.out.println("\n\tDANH SÁCH KHÁCH HÀNG\n\t");
			for (Customer item : ds) {
				System.out.println("STT: " + (ds.indexOf(item) + 1));
				System.out.println("Họ Tên: " + item.getTenKhachHang());
				System.out.println("Ga Đến: " + item.getGaDen());
				System.out.println("Gia Tiền: " + item.getGiaTien());
				System.out.print("===============================\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	public static void addCustomer() {
		try {
			Customer customer = new Customer();
			CustomerDAOImpl cus = new CustomerDAOImpl();
			Scanner scan = new Scanner(System.in);
			System.out.println("Nhập CMND:");
			customer.CMND = scan.nextInt();
			scan.nextLine();
			int check = 0;
			check= getCustomer(customer.CMND).getCMND();
			if (check == customer.CMND ) {
				System.out.println("Đã tồn tại CMND");
			} else {
				
				System.out.println("Nhập Họ và Tên :");
				customer.TenKhachHang = scan.nextLine();
				System.out.println("Nhập Ga Đến :");
				customer.GaDen = scan.nextLine();
				System.out.println("Nhập Giá Tiền :");
				customer.GiaTien = scan.nextDouble();
				cus.addNewCustomer(customer.CMND, customer.TenKhachHang, customer.GaDen, customer.GiaTien);
				System.out.println("Danh sách sau khi thêm :");
				displayCustomer();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static Customer getCustomer(int customerId) {
		Customer customer = new Customer();
		CustomerDAOImpl cus = new CustomerDAOImpl();
		try {
			customer = cus.findCustomerId(customerId);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return customer;

	}

	public static void findCustomer(int cmnd) {
		Scanner scan = new Scanner(System.in);
		Customer customer = new Customer();
		CustomerDAOImpl cus = new CustomerDAOImpl();
		customer = getCustomer(cmnd);
		if(customer.getCMND() == cmnd) {
			customer = cus.findCustomerId(cmnd);
			System.out.println("CMND: " + customer.getCMND());
			System.out.println("Họ Tên: " + customer.getTenKhachHang());
			System.out.println("Ga Đến: " + customer.getGaDen());
			System.out.println("Gia Tiền: " + customer.getGiaTien());
			System.out.print("===============================\n");
		}else {
			System.out.println("Không tìm thấy khách hàng này");
		}
	}

	public static void updateCustomer(int cmnd) {
		try {
			System.out.println("\n\tCẬP NHẬT DỮ LIỆU KHÁCH HÀNG\n\t");
			Customer customer = new Customer();
			CustomerDAOImpl cus = new CustomerDAOImpl();
			customer = getCustomer(cmnd);
			Scanner scan = new Scanner(System.in);
			
			if (customer.getCMND() == cmnd) {
				findCustomer(cmnd);
				System.out.println("Sửa CMND:");
				customer.CMND = scan.nextInt();
				scan.nextLine();
				System.out.println("Sửa Họ và Tên :");
				customer.TenKhachHang = scan.nextLine();
				System.out.println("Sửa Ga Đến :");
				customer.GaDen = scan.nextLine();
				System.out.println("Sửa Giá Tiền :");
				customer.GiaTien = scan.nextDouble();

				cus.editCustomer(customer.CMND, customer.TenKhachHang, customer.GaDen, customer.GiaTien);
				System.out.println("Danh sách sau khi sửa :");
				findCustomer(cmnd);

			} else {
				System.out.println("Không tồn tại CMND");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		CustomerDAOImpl cus = new CustomerDAOImpl();
		ArrayList<Customer> ds = new ArrayList<Customer>();
		ArrayList<Customer> ds1 = new ArrayList<Customer>();
		ds1 = cus.getAllCustomer();
		Customer customer = new Customer();
		while (true) {
			System.out.println("QUẢN LÝ MUA VÉ TÀU");
			System.out.println("SELECT ONE");
			System.out.println("1.Thêm 1 khách hàng mới");
			System.out.println("2.Hiển thị tất cả các khách hàng đang mua vé");
			System.out.println("3.Tìm 1 khách hàng theo CMND");
			System.out.println("4.Xóa 1 một khách hàng");
			System.out.println("5.Update dữ liệu theo CMND");

			int c;
			Scanner scan = new Scanner(System.in);
			System.out.print("NHẬP LỰA CHỌN CỦA BẠN: ");
			c = scan.nextInt();
			switch (c) {
			case 1: {
				System.out.println("\n\tTHÊM KHÁCH HÀNG\n\t");
				addCustomer();
				break;
			}
			case 2: {
				//displayCustomer();
				for (Customer item : ds1) {
					System.out.println("STT: " + (ds1.indexOf(item) + 1));
					System.out.println("Họ Tên: " + item.getTenKhachHang());
					System.out.println("Ga Đến: " + item.getGaDen());
					System.out.println("Gia Tiền: " + item.getGiaTien());
					System.out.print("===============================\n");
				}
				break;
			}
			case 3: {
				int cmnd;
				System.out.println("Nhập CMND:");
				cmnd = scan.nextInt();
				System.out.println("\n\tKHÁCH HÀNG VỪA TÌM KIẾM\n\t");
				findCustomer(cmnd);
				break;
			}
			case 4: {
//				try {
//					System.out.println("Nhập Khách Hàng Muốn Xoá:");
//					customer.CMND = scan.nextInt();
//					for(Customer item : ds1) {
//						if(item.getCMND() == customer.CMND) {
//							ds1.remove(item);
//							break;
//						}
//					}
//				} catch (Exception e) {
//					// TODO: handle exception
//					e.printStackTrace();
//				}
				System.out.println("Nhập Khách Hàng Muốn Xoá:");
				customer.CMND = scan.nextInt();
				cus.deleteCustomer(customer.CMND);
				System.out.println("Danh sách sau khi xoá :");
				displayCustomer();
				break;
			}
			case 5: {
				int cmnd;
				System.out.println("Nhập CMND:");
				cmnd = scan.nextInt();

				updateCustomer(cmnd);
				break;
			}

			}

		}
	}
}
