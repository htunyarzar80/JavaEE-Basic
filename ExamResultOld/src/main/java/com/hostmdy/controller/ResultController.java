package com.hostmdy.controller;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.List;

import javax.sql.DataSource;

import com.hostmdy.model.Result;
import com.hostmdy.model.ResultDAO;
import com.hostmdy.model.User;

/**
 * Servlet implementation class ResultController
 */
public class ResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Resource (name = "jdbc/examResult")
	private   DataSource dataSource;
	
	private ResultDAO  resultDAO;
	
	
    @Override
	public void init() throws ServletException {
		resultDAO = new ResultDAO(dataSource);
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ResultController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("user");
				
		if (user != null) {
			String mode = request.getParameter("user");
		
		
		
			
			if(mode == null) {
				mode= "LIST";
				
			}switch (mode) {
			case "LIST":
				showResult(request, response);
				break;
			case "CREATE":
				createResult(request,response);
				break;
			case "LOAD":
				loadResult(request,response);
				break;
			case "UPDATE":
				updateResult(request,response);
				break;
			case "DELETE":
				deleteResult(request,response);
				break;
			case "PAGE":
				loadPage(request,response);
				break;
			default:
				showResult(request, response);
				break;
			}
			}else {
				response.sendRedirect("login");
			}
			
		
	}
	protected void showResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Result> resultList = resultDAO.getAllResult();
		request.setAttribute("resultList", resultList);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		request.setAttribute("user", user);
		
		RequestDispatcher dispatch = request.getRequestDispatcher("index.jsp");
		
		dispatch.forward(request, response);
	}

	protected void createResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String seatNo = request.getParameter("seatNo");
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		String rowDate = request.getParameter("date");
		LocalDate date = LocalDate.parse(rowDate);
		Double gpa = Double.parseDouble(request.getParameter("gpa"));
		Boolean qualify = Boolean.parseBoolean(request.getParameter("qualify"));
		
		Result result = new Result(seatNo, major, name, date, qualify, gpa);
		
		int rowUpdated = resultDAO.createResult(result);
		
		if (rowUpdated >0) {
			showResult(request, response);
		}else {
			request.setAttribute("errorTitle","Result Creation Fail");
			request.setAttribute("errorMessage", "Please Check your data and create agian");
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			request.setAttribute("user", user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("error-page.jsp");
			dispatcher.forward(request, response);
			
		}
	}
	protected void updateResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Integer id = Integer.parseInt(request.getParameter("id"));
		String seatNo = request.getParameter("seatNo");
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		String rowDate = request.getParameter("date");
		LocalDate date = LocalDate.parse(rowDate);
		Double gpa = Double.parseDouble(request.getParameter("gpa"));
		Boolean qualify = Boolean.parseBoolean(request.getParameter("qualify"));
		
		Result result = new Result(id,seatNo, major, name, date, qualify, gpa);
		
		int rowUpdated = resultDAO.updateResult(result);
		
		if (rowUpdated >0) {
			showResult(request, response);
		}else {
			request.setAttribute("errorTitle","Result Upgrade Fail");
			request.setAttribute("errorMessage", "Please Check your data and update agian");
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			request.setAttribute("user", user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("error-page.jsp");
			dispatcher.forward(request, response);
		}
	}
	protected void loadResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		Result result = resultDAO.getResultById(id);
		
		request.setAttribute("result", result);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		request.setAttribute("user", user);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("result-update.jsp");
		dispatcher.forward(request, response);
		
	}
	protected void deleteResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Integer id = Integer.parseInt(request.getParameter("id"));
        int rowUpdated = resultDAO.deleteResult(id);
		
		if (rowUpdated >0) {
			showResult(request, response);
		}else {
			request.setAttribute("errorTitle","Result delete Fail");
			request.setAttribute("errorMessage", "Please Check your data and delete xf agian");
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			request.setAttribute("user", user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("error-page.jsp");
			dispatcher.forward(request, response);
		}
	}
	protected void loadPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("errorMessage", "Please Check your data and create agian");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		request.setAttribute("user", user);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("error-page.jsp");
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
