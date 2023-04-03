package com.dtd.controller;

import java.io.IOException;
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

import com.dtd.dto.BookDTO;
import com.dtd.dto.BorrowDTO;
import com.dtd.dto.StudentDTO;
import com.dtd.model.Student;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action") != null ? request.getParameter("action") : "none";
		String uri = request.getServletPath();

		try {
			if (uri.contains("search")) {
				this.getSearchListBorrow(request, response);
			} else {

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

					BorrowDTO newBorrow = new BorrowDTO(studentID, bookID, quantity, borrowDate);
					this.borrowService.add(newBorrow);
					response.sendRedirect("borrow");

					break;
				case "delete":
					// this.delete(request, response);
					break;
				case "edit":
					// this.showEditForm(request, response);
					break;
				case "update":
					// this.updateStudent(request, response);
					break;
//				case "search":
//					this.getSearchListBorrow(request, response);
//					break;
				default:
					this.getListBorrow(request, response);
					break;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void getSearchListBorrow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
	
			try {
				ArrayList<StudentDTO> listStu = this.studentService.list();
				ArrayList<BookDTO> listBook = this.bookService.list();

				String name = request.getParameter("SearchValue");
				String startDay = request.getParameter("startDate");
				String endDay = request.getParameter("endDate");
				
//				DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
//				java.sql.Date startDate = (java.sql.Date) df.parse(startDay);
//				java.sql.Date  endDate = (java.sql.Date) df.parse(endDay);
//
//				System.out.println("startDay" + startDate);
//				System.out.println("endDay" + endDate);
				if(name == null) {
					name = "";
				}else if(startDay == null || endDay == null) {
					startDay = "";
					endDay = "";
				}
				ArrayList<BorrowDTO> listBorrow = this.borrowService.findList(name,startDay,endDay);

				request.setAttribute("listBook", listBook);
				request.setAttribute("listStu", listStu);
				request.setAttribute("listBorrow", listBorrow);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/Borrows-Layout/index.jsp");
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}

	}

	private void getListBorrow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		ArrayList<BorrowDTO> listBorrow = this.borrowService.list();
		ArrayList<StudentDTO> listStu = this.studentService.list();
		ArrayList<BookDTO> listBook = this.bookService.list();
		request.setAttribute("listBook", listBook);
		request.setAttribute("listStu", listStu);
		request.setAttribute("listBorrow", listBorrow);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Borrows-Layout/index.jsp");
		dispatcher.forward(request, response);
	}

}
