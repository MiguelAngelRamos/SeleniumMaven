<%@page import="logica.UserForm"%>
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
		
		<% UserForm user = (UserForm) request.getSession().getAttribute("user");
		   int contador = 1;
		%>
		  <div class="users-page">
		    <h2 class="text-center mt-5">Lista Usuarios</h2>

		    <div class="container mt-5">
		      <!-- Tabla -->
		
	    <div class='container mt-5'> ");
	     <h1>Bienvenido: <%= user.getNombre()%> </h1>
		 
		  </div>
		  
		  
		  

		
	</body>
</html> 