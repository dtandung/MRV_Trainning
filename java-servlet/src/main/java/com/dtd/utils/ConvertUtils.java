package com.dtd.utils;

import com.dtd.dto.BookDTO;
import com.dtd.model.Book;

public class ConvertBookUtils {

	public static Book insertToBook(BookDTO book,boolean isUsedBook) {
		
		Book bookRT = new Book();
		
		bookRT.setBookID(book.getBookID());
		bookRT.setName(book.getName());
		bookRT.setQuantity(book.getQuantity());
		bookRT.setTotalPage(book.getTotalPage());
		bookRT.setType(book.getType());
		bookRT.setUsedBook(isUsedBook);
		
		return bookRT;
	}
	
	
	
}
