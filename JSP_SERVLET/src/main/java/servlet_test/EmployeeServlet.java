package servlet_test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class EmployeeServlet
 */
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		String Gender = request.getParameter("Gender");
		String description = request.getParameter("description");
		String [] Fields = request.getParameterValues("Fields");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>EmployeeDetails</title></head></html>");
		out.print("<h2> Employee Information</h2>");
		out.print("<p>Firstname : "+firstname+"</p>");
		out.print("<p>Lastname : "+lastname+"</p>");
		out.print("<p>Email : "+email+"</p>");
		out.print("<p>Password : "+password+"</p>");
		out.print("<p>Role : "+role+"</p>");
		
		
		for(final String field : Fields) {
			out.print("<li>"+field+"</li>");
		}
		out.print("</ul>");
		out.print("<p>Gender : "+Gender+"</p>");
		out.print("<p>Description : "+description+"</p>");
		out.print("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
