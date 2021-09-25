<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Eliminar Usuario</title>
	
  <!-- Estilos Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	 crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	 crossorigin="anonymous">
	</script>
	

	<!--- estilos --->
	<link href="insertarstyle.css" rel="stylesheet" type="text/css" />
	<!--- CDN --->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	 crossorigin="anonymous" referrerpolicy="no-referrer">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  

  
</head>

<body>
	
	<!-- Titulo -->
	<h2>
		<div class="sticky-lg-top">Tienda de Productos</div>
	</h2>

	<!-- Barra de Navegacion -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<span class="navbar-brand" href="#">
				<h3>Modulos</h3>
			</span>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="listausuarios.jsp"><h3>Usuarios</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listaclientes.jsp" ><h3>Clientes</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h3>Proveedores</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h3>Productos</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h3>Ventas</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><h3>Reportes</h3></a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Zona de ingreso de ingreso de informacio -->
<div class="full-form">
  <center>
  <div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al eliminar el usuario, verifique que 
				exista un usuario con la cedula ingresada</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario eliminado con exito</div>
			
	<div style="padding-left: 5px">
		<h1>
			<i class="fas fa-skull-crossbones"></i> Escriba la cedula del usuario a eliminar
		</h1>
		<div class="container">
			
				
  <form class="row g-3" id="flex-parent-element" type="" method="">
    <div class="row">
       <div class="column">
       <div id="flex-child-element1">
    
    <div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cedula</span> <input
						type="text" class="form-control"
						placeholder="Inserte cedula aqui..."
						aria-describedby="basic-addon1" required id="cedula_usuario">
				</div>
    
    <button type="button" class="btn btn-danger" onclick="eliminar()">
				<i class="fas fa-skull-crossbones"></i> Eliminar usuario
			</button>
    

    </div>
  </div>
  <div class="column">
     <div id="flex-child-element">
      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='/insertarusuario.jsp'">Crear </button>
      <button type="button" class="btn btn-info btn-lg" onclick="window.location.href='/consultarusuario.jsp'">Consultar Usuario</button>
      <button type="button" class="btn btn-warning btn-lg" onclick="window.location.href='/actualizarusuario.jsp'">Actualizar Usuario</button>
      <button type="button" class="btn btn-danger btn-lg" onclick= "window.location.href='/eliminarusuario.jsp'">Borrar Usuario</button>
      <button type="button" class="btn btn-info btn-lg" onclick="window.location.href='/listausuarios.jsp'">Lista de Usuarios</button>
    </div>
  </div>
</div>


  </form>
</center>

</div>


<script>

function eliminar() {
	var y = document.getElementById("cedula_usuario").value;
	var req = new XMLHttpRequest();
	var coincidencia = false;
	req.open('GET', 'http://localhost:8080/listausuarios', false);
	req.send(null);
	var usuarios = null;
	if (req.status == 200)
		usuarios = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	for (i = 0; i < usuarios.length; i++) {
		
		console.log(usuarios[i].cedula_usuario);
		if (usuarios[i].cedula_usuario == y) {
			console.log(usuarios[i].cedula_usuario + " " + y);
			coincidencia = true
			break;
		}
	}
	console.log(coincidencia);
	if (coincidencia != false) {
		var cedula=document.getElementById("cedula_usuario").value;
		
		var xhr = new XMLHttpRequest();
		xhr.open("DELETE", "http://localhost:8080/eliminarusuario?cedula_usuario="+cedula);
		
		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");
		document.getElementById("cedula_usuario").value = "";
		xhr.send();
	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		
		document.getElementById("cedula_usuario").value = "";;
	}
}
</script>
</body>

</html>   