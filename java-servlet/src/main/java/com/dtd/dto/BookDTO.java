package com.dtd.dto;

public class BookDTO {
	private int BookID;
	private String Name;
	private int TotalPage;
	private String Type;
	private int Quantity;
	
	
	public BookDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookDTO(int bookID, String name, int totalPage, String type, int quantity) {
		super();
		BookID = bookID;
		Name = name;
		TotalPage = totalPage;
		Type = type;
		Quantity = quantity;
	}
	public BookDTO(String name, int totalPage, String type, int quantity) {
		super();
		Name = name;
		TotalPage = totalPage;
		Type = type;
		Quantity = quantity;
	}
	public int getBookID() {
		return BookID;
	}
	public void setBookID(int bookID) {
		BookID = bookID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getTotalPage() {
		return TotalPage;
	}
	public void setTotalPage(int totalPage) {
		TotalPage = totalPage;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	
	
}
