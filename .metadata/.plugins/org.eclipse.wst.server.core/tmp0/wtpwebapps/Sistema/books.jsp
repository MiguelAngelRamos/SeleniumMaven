<%@page import="cl.awakelab.bootcamp.model.entity.User"%>
<%@page contentType="text/html;charset=UTF-8" language="java" import="cl.awakelab.bootcamp.controller.UserController,cl.awakelab.bootcamp.model.entity.Book,java.util.List"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" charset="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
    <title>Welcome Page</title>
</head>
<body>
	
 	<jsp:include page="navbar.jsp" />
    <div class="container mt-5">
        <!--  <h1 class="text-center">Bienvenido ${sessionScope.usuario} </h1> -->
        <p>Books</p>
        
         <!-- Tabla -->
     
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Title</th>
                <th scope="col">Genre</th>
                <th scope="col">Author</th>
                <th scope="col">Copies</th>
                <th scope="col">Novelty</th>
              </tr>
            </thead>
            <tbody class="table-group-divider">
               <% List<Book> libros = (List<Book>)request.getAttribute("home");
        if (libros != null) {
            for(Book b : libros) {
        %>
              <tr>
                <td><%= b.getId() %></td>
                <td><%= b.getTitle() %></td>
                <td><%= b.getGenre() %></td>
                <td><%= b.getAuthor() %></td>
                <td><%= b.getCopies() %></td>
                <td><%= b.isNovelty() %></td>
              </tr>
                  <% 
            }
        } 
        %>
            </tbody>
          </table>
   
    

      
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>
