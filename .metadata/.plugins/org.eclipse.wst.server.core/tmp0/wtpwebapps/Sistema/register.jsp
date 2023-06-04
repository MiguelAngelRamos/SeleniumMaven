<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%--
    Cookie[] cookies = request.getCookies();
    if(cookies != null) {
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("credenciales")) {
                // Redireccionar a la página principal si la cookie "credenciales" existe
                response.sendRedirect("home.jsp"); // aquí cambiamos "index.jsp" a "home.jsp"
                return;
            }
        } // quizas este codigo no sea necesario por que ya lo hace el servelet
    }
--%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" charset="text/html; charset=UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
	<title>Login</title>
	<script>
	if (document.cookie.indexOf('credenciales') >= 0) {
	    window.location.href = 'home.jsp'; // redirige
	}</script> 
	
</head>
	<body>
	<div class="container mt-5">
    <h1 class="text-center">Registrar nuevo usuario</h1>

    <div class="row mt-5">
        <div class="col-4 offset-4">
            <form id="form-register">
                <div class="mb-3">
                    <label for="username" class="form-label">Usuario</label>
                    <input
                        type="text"
                        class="form-control"
                        id="username"
                        name="username"
                        required
                    />
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Contraseña</label>
                    <input
                        type="password"
                        class="form-control"
                        id="password"
                        name="password"
                        required
                    />
                </div>

                <!-- Agrega los campos restantes para el nombre, apellido, email, balance y si es premium o no -->

                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-success">Registrar</button>
                </div>
            </form>
        </div>
    </div>
</div>
	
	</body>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/app.js"></script>
</html>