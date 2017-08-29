import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class serveletExample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("username");
		String pwd=request.getParameter("password");
		String ip=request.getRemoteAddr();
		response.getWriter().println("<html>");
		response.getWriter().println("<head>");
		response.getWriter().println("<title> this is the response</title>");
		response.getWriter().println("</head>");
		response.getWriter().println("<body>");
		 
		
		response.getWriter().println("your name is:"+name);
		response.getWriter().println("<br> your password is"+pwd);
		response.getWriter().println("your ip address is"+ip);
		

		response.getWriter().println("</body>");
		response.getWriter().println("</html>");

	}

}
