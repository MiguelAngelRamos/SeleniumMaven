package servelts;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logica.UserForm;
import logica.Usuario;

/**
 * Servlet implementation class SvUsuarios
 */
// @WebServlet(name="SvUsuarios", urlPatterns={"/SvUsuarios"})
@WebServlet("/SvUsuarios")
public class SvUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SvUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Estamos en get");
		List<Usuario> listaUsuarios = new ArrayList<>();
		listaUsuarios.add(new Usuario("11111111-1", "Miguel", "Ramos", "1414444-4"));
		listaUsuarios.add(new Usuario("22222222-2", "Andres", "Ramirez", "1413144-4"));
		listaUsuarios.add(new Usuario("33333333-3", "Camila", "Marquez", "1444141-4"));
		listaUsuarios.add(new Usuario("44444444-4", "Rodrigo", "Rodriguez", "1737444-4"));
		
		// la sesión siempre se crea de forma automatica cuando un usuario entra a la web
		HttpSession miSession = request.getSession();
		miSession.setAttribute("listaUsuarios", listaUsuarios); // a la session darle un arributo que seria a lista de usuarios
		
		response.sendRedirect("mostrar-usuarios.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String nombre=request.getParameter("name");
        String apellido=request.getParameter("apellido");
        
        String lenguaje=request.getParameter("lenguaje");
        String perfil =request.getParameter("perfil");
        String [] intereses=request.getParameterValues("intereses");
        UserForm user = new UserForm(nombre, apellido, lenguaje, perfil, intereses);
        HttpSession miSession = request.getSession();
		miSession.setAttribute("user", user); // a la session darle un arributo que seria a lista de usuarios
		
		response.sendRedirect("user.jsp");
	}

}
