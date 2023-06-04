<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" charset="text/html; charset=UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"  rel="stylesheet">
		<title>Insert title here</title>
	</head>
	<body>
	<!--<h1>Hello Worlds desde HTML!</h1>-->
	<%-- String hola ="Hola mundo desde java"; %>
	<%=hola --%> 
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="container mt-5">
					<div class="row">
						<div class="col-6 offset-3 formulario">
							<!-- Formulario -->
							<h2 class="text-center mb-2">Formulario de Datos</h2>
								<img class="rounded mx-auto d-block img-thumbnail" src="https://i.blogs.es/8d2420/650_1000_java/1366_2000.png"  width="70" alt="...">

							<form action="SvUsuarios" method="post">

								<div class="mb-3">
									<label for="name" class="form-label">Nombre</label> 
									<input type="text" class="form-control" id="nombre" name="name" required>
								</div>
								
								<div class="mb-3">
									<label for="apellido" class="form-label">Apellido</label> 
									<input type="text" class="form-control" id="apellido" name="apellido" required>
								</div>
								

								<div class="mb-3">
									<label for="last-name" class="form-label">Lenguaje favorito</label> 
									<select class="form-select" name="lenguaje">
										<option selected>Abrir este menú de selección</option>
										<option value="Java">Java</option>
										<option value="Python">Python</option>
										<option value="JavaScript">JavaScript</option>
									</select>
								</div>

							<!-- checkbox  -->
							
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="intereses" value="Inteligencia Artificial" id="flexCheckDefault" checked>
							  <label class="form-check-label" for="flexCheckDefault">
							   Inteligencia Artificial
							  </label>
							</div>
							
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="intereses" value="Desarrollo de Software" id="flexCheckChecked" >
							  <label class="form-check-label" for="flexCheckChecked">
							    Desarrollo de Software
							  </label>
							</div>
							
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" name="intereses" value="Clean Code" id="flexCheckChecked">
							  <label class="form-check-label" for="flexCheckChecked">
							    Clean Code
							  </label>
							</div>
								
							<!-- / checkbox  -->

							<div class="mt-4 form-check">
								<input class="form-check-input" type="radio" name="perfil" value="FrontEnd" id="flexRadioDefault1"> 
								<label class="form-check-label" for="flexRadioDefault1">FrontEnd</label>
							</div>
								
							<div class="form-check">
								<input class="form-check-input" type="radio" name="perfil" value="Backend" id="flexRadioDefault1"> 
								<label class="form-check-label" for="flexRadioDefault1">Backend</label>
							</div>
								
							<div class="form-check mb-2">
								<input class="form-check-input" type="radio" name="perfil" value="FullStack" id="flexRadioDefault2" checked>
								<label class="form-check-label" for="flexRadioDefault2">FullStack</label>
							</div>
								
						
							<div class="d-grid gap-2 mt-4">
								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>

							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
		
		<div class="row">
			<div class="col-12">
				<div class="container mt-2">
					<div class="row">
						<div class="col-6 offset-3">
							<form action="SvUsuarios" method="GET">
								<div class="d-grid gap-2">
									<button type="submit" class="btn btn-success">Mostrar Usuarios</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
						
	
	</div>
	

</body>
</html>