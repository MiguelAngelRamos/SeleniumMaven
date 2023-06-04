<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <h1 class="text-center">Bienvenido ${sessionScope.usuario} </h1>
        <br/>
        <a href='index.jsp'>Volver</a>
    </div>
</body>
</html>
