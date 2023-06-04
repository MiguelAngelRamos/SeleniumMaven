package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Auth")
public class Auth extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Auth() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("usuario");
        String pwd = request.getParameter("password");
        RequestDispatcher requestDispatcher;

        if(user.equals("admin") && pwd.equals("admin")) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", user);  // Set session attribute
            requestDispatcher = request.getRequestDispatcher("welcome.jsp");
        } else {
            requestDispatcher = request.getRequestDispatcher("error.jsp");
        }
        requestDispatcher.forward(request, response);
    }
}
