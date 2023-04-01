package com.dtd.utils;

import com.dtd.dto.BookDTO;
import com.dtd.dto.StudentDTO;
import com.dtd.model.Book;
import com.dtd.model.Student;

public class ConvertUtils {

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
	
	public static Student insertToStudent(StudentDTO student, boolean isUsedStudent) {
		Student studentRT = new Student();
		
		studentRT.setStudentID(student.getStudentID());
		studentRT.setName(student.getName());
		studentRT.setAge(student.getAge());
		studentRT.setGender(student.isGender());
		studentRT.setUsedStudent(isUsedStudent);
		
		return studentRT;
	}
	
}
