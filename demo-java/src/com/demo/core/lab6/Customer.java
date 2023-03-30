package com.demo.core.lab6;

public class Customer {
	public int CMND;
	public String TenKhachHang;
	public String GaDen;
	public double GiaTien;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int cMND, String tenKhachHang, String gaDen, double giaTien) {
		super();
		CMND = cMND;
		TenKhachHang = tenKhachHang;
		GaDen = gaDen;
		GiaTien = giaTien;
	}
	public int getCMND() {
		return CMND;
	}
	public void setCMND(int cMND) {
		CMND = cMND;
	}
	public String getTenKhachHang() {
		return TenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		TenKhachHang = tenKhachHang;
	}
	public String getGaDen() {
		return GaDen;
	}
	public void setGaDen(String gaDen) {
		GaDen = gaDen;
	}
	public double getGiaTien() {
		return GiaTien;
	}
	public void setGiaTien(double giaTien) {
		GiaTien = giaTien;
	}
	
}
