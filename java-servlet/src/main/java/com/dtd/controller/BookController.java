package com.dtd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dtd.dto.BookDTO;
import com.dtd.model.Book;
import com.dtd.service.BookServiceImpl;
import com.dtd.service.CommonService;
import com.dtd.utils.ConvertBookUtils;

/**
 * Servlet implementation class BooksController
 */
@WebServlet("/BooksController")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CommonService<BookDTO> bookService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	/**
	 * @throws SQLException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		this.bookService = new BookServiceImpl();
	}

	public BookController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action") != null ? request.getParameter("action") : "none";
		try {
			switch (action) {
			case "new":
				RequestDispatcher dispatcher = request.getRequestDispatcher("./Books-Layout/edit.jsp");
				dispatcher.forward(request, response);
				break;
			case "insert":
				String name = request.getParameter("Name");
				int totalPage = Integer.parseInt(request.getParameter("TotalPage"));
				String type = request.getParameter("Type");
				int quantity = Integer.parseInt(request.getParameter("Quantity"));

				BookDTO newBook = new BookDTO(name, totalPage, type, quantity);
				this.bookService.add(newBook);
				response.sendRedirect("book");
				break;
			case "delete":
				delete(request, response);
				break;
			case "edit":
				this.showEditForm(request, response);
				break;
			case "update":
				this.updateBook(request, response);
				break;
			default:
				this.getListBook(request, response);
				break;
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

	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		if (!(bookService.inUsed(id))) {
			bookService.delete(id);
		}
		response.sendRedirect("book");

	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		BookDTO existingBook = this.bookService.get(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Books-Layout/edit.jsp");
		request.setAttribute("book", existingBook);
		dispatcher.forward(request, response);
	}

	private void updateBook(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("Name");
			int totalPage = Integer.parseInt(request.getParameter("TotalPage"));
			String type = request.getParameter("Type");
			int quantity = Integer.parseInt(request.getParameter("Quantity"));

			BookDTO newBook = new BookDTO(id, name, totalPage, type, quantity);
			this.bookService.update(newBook);
			System.out.println(newBook.getName());
			response.sendRedirect("book");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	private void getListBook(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		ArrayList<BookDTO> listBook = this.bookService.list();
		
		List<Book> listBookTemp = new ArrayList<Book>();

		listBook.forEach((book) -> {
			try {
				boolean isUseBook = bookService.inUsed(book.getBookID());						
				Book bookTemp = ConvertBookUtils.insertToBook(book, isUseBook);		
				listBookTemp.add(bookTemp);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		request.setAttribute("listBook", listBookTemp);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Books-Layout/index.jsp");
		dispatcher.forward(request, response);
	}
}
