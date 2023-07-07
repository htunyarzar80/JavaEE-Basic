package servlet_test;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class ParameterServlet
 */
public class ParameterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParameterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext context= getServletContext();
		ServletConfig config = getServletConfig();
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String maxFileSize = context.getInitParameter("MAX_FILE_SIZE");
		String teamName = context.getInitParameter("TEAM_NAME");
		
		String param1 = config.getInitParameter("param1");
		String param2 = config.getInitParameter("param2");
		
		out.print("MaxFileSize : "+maxFileSize+"</br>");
		out.print("Tema Name : "+teamName+"</br>");
		out.print("Param 1 : "+param1+"</br>");
		out.print("Param 2 : "+param2+"</br>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
