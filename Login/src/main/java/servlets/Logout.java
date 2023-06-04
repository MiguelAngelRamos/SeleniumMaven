package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Fetch session. Do not create a new session if it doesn't exist
        System.out.println(session);
        if (session != null) {
            session.invalidate(); // remove session.
            System.out.println("Cerrando Session");
            
        }
        response.sendRedirect("index.jsp"); // Redirect to login page.
    }
}
