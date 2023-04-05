package com.dtd.utils;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import com.dtd.dto.BookDTO;
import com.dtd.dto.StudentDTO;
import com.dtd.model.Book;
import com.dtd.model.Student;

public class ConvertUtils {

  public static Book insertToBook(BookDTO book, boolean isUsedBook) {

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


  public static boolean validDate(String date) {
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    dateFormat.setLenient(false);
    try {
      dateFormat.parse(date.trim());
    } catch (Exception pe) {
      return false;
    }
    return true;
  }
}
