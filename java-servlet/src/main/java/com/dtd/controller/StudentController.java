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
import com.dtd.dto.StudentDTO;
import com.dtd.model.Book;
import com.dtd.model.Student;
import com.dtd.service.CommonService;
import com.dtd.service.StudentServiceImpl;
import com.dtd.utils.ConvertUtils;

/**
 * Servlet implementation class StudentsController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CommonService<StudentDTO> studentService;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	@Override
	public void init() throws ServletException {
		this.studentService = new StudentServiceImpl();
	}

	public StudentController() {
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
		try {
			switch (action) {
			case "new":
				RequestDispatcher dispatcher = request.getRequestDispatcher("./Students-Layout/edit.jsp");
				dispatcher.forward(request, response);
				break;
			case "insert":
				String name = request.getParameter("Name");
				int age = Integer.parseInt(request.getParameter("Age"));
				String genderTemp = request.getParameter("Gender");

				boolean gender = false;
				if (genderTemp.equals("1")) {
					gender = true;
				} else {
					gender = false;
				}
				StudentDTO newStudent = new StudentDTO(name, age, gender);
				this.studentService.add(newStudent);
				response.sendRedirect("student");

				break;
			case "delete":
				this.delete(request, response);
				break;
			case "edit":
				this.showEditForm(request, response);
				break;
			case "update":
				this.updateStudent(request, response);
				break;
			default:
				this.getListStudent(request, response);
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
		javax.servlet.http.HttpSession session = request.getSession();
		if (studentService.inUsed(id)) {
			studentService.delete(id);
			session.setAttribute("success", "success");
		}
		response.sendRedirect("student");

	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		StudentDTO existingStudent = this.studentService.get(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Students-Layout/edit.jsp");
		request.setAttribute("student", existingStudent);
		dispatcher.forward(request, response);
	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		try {
		    javax.servlet.http.HttpSession session = request.getSession();
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("Name");
			int age = Integer.parseInt(request.getParameter("Age"));
			String genderTemp = request.getParameter("Gender");
			boolean gender = false;
			if (genderTemp.equals("1")) {
				gender = true;
			} else {
				gender = false;
			}
			StudentDTO newStudent = new StudentDTO(id, name, age, gender);
			if (newStudent != null) {
				this.studentService.update(newStudent);
				session.setAttribute("success", "success");
				response.sendRedirect("student");
			}
			showEditForm(request, response);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	private void getListStudent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		ArrayList<StudentDTO> listStudent = this.studentService.list();

		ArrayList<Student> listStudentTemp = new ArrayList<Student>();

		listStudent.forEach((student) -> {
			try {
				boolean isUseStudent = studentService.inUsed(student.getStudentID());
				Student studentTemp = ConvertUtils.insertToStudent(student, isUseStudent);
				listStudentTemp.add(studentTemp);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		request.setAttribute("listStudent", listStudentTemp);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./Students-Layout/index.jsp");
		dispatcher.forward(request, response);
	}
}
