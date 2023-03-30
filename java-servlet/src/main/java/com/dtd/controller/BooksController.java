package com.dtd.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dtd.dto.BookDTO;
import com.dtd.service.BookServiceImpl;
import com.dtd.service.CommonService;


/**
 * Servlet implementation class BooksController
 */
@WebServlet("/BooksController")
public class BooksController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static CommonService<BookDTO> bookService ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @throws SQLException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		this.bookService = new BookServiceImpl();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			getBook(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void getBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		BookDTO book = bookService.get(2);
		request.setAttribute("book", book);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Books-Layout/index.jsp");
		dispatcher.forward(request, response);
	}
}
