package com.dtd.model;

public class Book {
	private int bookID;
	private String name;
	private int totalPage;
	private String type;
	private int quantity;
	private boolean isUsedBook;
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book(int bookID, String name, int totalPage, String type, int quantity, boolean isUsedBook) {
		super();
		this.bookID = bookID;
		this.name = name;
		this.totalPage = totalPage;
		this.type = type;
		this.quantity = quantity;
		this.isUsedBook = isUsedBook;
	}

	public int getBookID() {
		return bookID;
	}

	public void setBookID(int bookID) {
		this.bookID = bookID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isUsedBook() {
		return isUsedBook;
	}

	public void setUsedBook(boolean isUsedBook) {
		this.isUsedBook = isUsedBook;
	}
	
	
	
}
