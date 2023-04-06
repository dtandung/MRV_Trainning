package com.dtd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dtd.dto.BookDTO;
import com.dtd.dto.BorrowDTO;
import com.dtd.dto.StudentDTO;

import com.dtd.service.BookServiceImpl;
import com.dtd.service.BorrowService;
import com.dtd.service.BorrowServiceImpl;
import com.dtd.service.CommonService;
import com.dtd.service.StudentServiceImpl;
import com.dtd.utils.ConvertUtils;

/**
 * Servlet implementation class BorrowsController
 */
@WebServlet("/BorrowController")
public class BorrowController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private BorrowService<BorrowDTO> borrowService;
  private CommonService<StudentDTO> studentService;
  private CommonService<BookDTO> bookService;

  /**
   * @see HttpServlet#HttpServlet()
   */

  @Override
  public void init() throws ServletException {
    this.borrowService = new BorrowServiceImpl();
    this.studentService = new StudentServiceImpl();
    this.bookService = new BookServiceImpl();
  }

  public BorrowController() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // TODO Auto-generated method stub
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    String action =
        request.getParameter("action") != null ? request.getParameter("action") : "none";
    // String uri = request.getServletPath();

    try {
      // if (uri.contains("search")) {
      // this.getSearchListBorrow(request, response);
      // } else {

      switch (action) {
        case "new":
          ArrayList<StudentDTO> listStu = this.studentService.list();
          ArrayList<BookDTO> listBook = this.bookService.list();
          request.setAttribute("listBook", listBook);
          request.setAttribute("listStu", listStu);
          RequestDispatcher dispatcher = request.getRequestDispatcher("./Borrows-Layout/edit.jsp");
          dispatcher.forward(request, response);
          break;
        case "insert":
          int studentID = Integer.parseInt(request.getParameter("StudentID"));
          int bookID = Integer.parseInt(request.getParameter("BookID"));
          int quantity = Integer.parseInt(request.getParameter("Quantity"));
          long millis = System.currentTimeMillis();
          java.sql.Date borrowDate = new java.sql.Date(millis);

          BookDTO bok = new BookDTO();
          bok = this.bookService.get(bookID);

          if (quantity <= bok.getQuantity()) {
            BorrowDTO newBorrow = new BorrowDTO(studentID, bookID, quantity, borrowDate);
            this.borrowService.add(newBorrow);
            response.setContentType("text/html;charset:UTF-8");
            response.getWriter().write("borrow");
          }else {
            response.setContentType("text/html;charset:UTF-8");
            response.getWriter().write("*Số lượng vượt quá cho phép");
          }
          break;
        case "search":
          getListBorrow(request, response);
          break;
        default:
          ArrayList<BorrowDTO> listBorrow = this.borrowService.list("", "", "");
          ArrayList<StudentDTO> listStudent = this.studentService.list();
          ArrayList<BookDTO> listbook = this.bookService.list();
          request.setAttribute("listBook", listbook);
          request.setAttribute("listStu", listStudent);
          request.setAttribute("listBorrow", listBorrow);
          RequestDispatcher redispatcher = request.getRequestDispatcher("/Borrows-Layout/index.jsp");
          redispatcher.forward(request, response);
          break;
      }
      // }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
  }

  private void getListBorrow(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException, SQLException {
    String key = request.getParameter("SearchValue");
    String startDay = request.getParameter("startDate");
    String endDay = request.getParameter("endDate");
    ArrayList<BorrowDTO> listBorrow = this.borrowService.list(key, startDay, endDay);
    ArrayList<StudentDTO> listStu = this.studentService.list();
    ArrayList<BookDTO> listBook = this.bookService.list();
    if (key == null)
      key = "";
    if (startDay == null)
      startDay = "";
    if (endDay == null)
      endDay = "";
    
    if (key.matches("^\\d{4}-\\d{2}-\\d{2}$")) {
      if (ConvertUtils.validDate(key)) {
        request.setAttribute("searchValue", key);
        request.setAttribute("startDate", startDay);
        request.setAttribute("endDate", endDay);
        request.setAttribute("listBook", listBook);
        request.setAttribute("listStu", listStu);
        request.setAttribute("listBorrow", listBorrow);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Borrows-Layout/search.jsp");
        dispatcher.forward(request, response);
      } else {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Borrows-Layout/search.jsp");
        dispatcher.forward(request, response);
      }
    }
    request.setAttribute("searchValue", key);
    request.setAttribute("startDate", startDay);
    request.setAttribute("endDate", endDay);
    request.setAttribute("listBook", listBook);
    request.setAttribute("listStu", listStu);
    request.setAttribute("listBorrow", listBorrow);
    RequestDispatcher dispatcher = request.getRequestDispatcher("/Borrows-Layout/search.jsp");
    dispatcher.forward(request, response);
  }
}
