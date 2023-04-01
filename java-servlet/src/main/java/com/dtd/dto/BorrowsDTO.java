package com.dtd.dto;

import java.sql.Date;

public class BorrowsDTO {
	private int BorrowID;
	private int StudentID;
	private int BookID;
	private int Quantity;
	private Date BorrowDate;
	
	
	public BorrowsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BorrowsDTO(int borrowID, int studentID, int bookID, int quantity, Date borrowDate) {
		super();
		BorrowID = borrowID;
		StudentID = studentID;
		BookID = bookID;
		Quantity = quantity;
		BorrowDate = borrowDate;
	}
	public BorrowsDTO(int studentID, int bookID, int quantity, Date borrowDate) {
		super();
		StudentID = studentID;
		BookID = bookID;
		Quantity = quantity;
		BorrowDate = borrowDate;
	}
	public int getBorrowID() {
		return BorrowID;
	}
	public void setBorrowID(int borrowID) {
		BorrowID = borrowID;
	}
	public int getStudentID() {
		return StudentID;
	}
	public void setStudentID(int studentID) {
		StudentID = studentID;
	}
	public int getBookID() {
		return BookID;
	}
	public void setBookID(int bookID) {
		BookID = bookID;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public Date getBorrowDate() {
		return BorrowDate;
	}
	public void setBorrowDate(Date borrowDate) {
		BorrowDate = borrowDate;
	}
	
	
}
