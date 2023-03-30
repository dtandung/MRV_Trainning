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

import com.dtd.dao.CommonDAO;
import com.dtd.dto.BookDTO;
import com.dtd.service.BookServiceImpl;
import com.dtd.service.CommonService;


/**
 * Servlet implementation class BooksController
 */
@WebServlet("/BooksController")
public class BooksController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	CommonService<BookDTO> bookservice = new BookServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BookDTO book = new BookDTO();
		try {
			book = bookservice.Get(1);
			System.out.println("book"+book);
			request.setAttribute("book", book);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Books-Layout/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
