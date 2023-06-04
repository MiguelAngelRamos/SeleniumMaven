<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" charset="text/html; charset=UTF-8">
		  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
		<title>Insert title here</title>
	</head>
	<body>
		
		<% List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
		   int contador = 1;
		%>
		  <div class="users-page">
		    <h2 class="text-center mt-5">Lista Usuarios</h2>

		    <div class="container mt-5">
		      <!-- Tabla -->
		      <table class="table table-striped table-hover">
		        <thead class="table-dark">
		        <tr>
		          <th scope="col">Rut</th>
		          <th scope="col">Nombre</th>
		          <th scope="col">Apellido</th>
		          <th scope="col">Telefono</th>
		        </tr>
		        </thead>
		        <tbody id="listado-clientes">
		        <!-- row = fila -->
		        <% for(Usuario usuario: listaUsuarios) {%>
		        <tr>
		          <td> <%=usuario.getDni()%></td>
		          <td><%=usuario.getNombre() %></td>
		          <td><%=usuario.getApellido() %></td>
		    	  <td><%=usuario.getTelefono() %></td>
		        </tr>
		        <% contador = contador + 1; %>
		        <%}%>
		        </tbody>
		      </table>
		    </div>
		  </div>
		  
		  
		  

		
	</body>
</html>