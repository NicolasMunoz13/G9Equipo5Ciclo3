<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Busqueda de Usuario</title>
	
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
		<div class="sticky-lg-top">Tienda de Prodcutos</div>
	</h2>

	<!-- Barra de Navegacion -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<span class="navbar-brand" href="#">
				<h3>Módulos</h3>
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
          <a class="nav-link" href="listaproveedores.jsp"><h3>Proveedores</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="insertarproducto.jsp"><h3>Productos</h3></a>
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
					role="alert">Error en busqueda de usuario, el usuario no existe</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Usuario encontrado con exito</div>
				
  <form class="row g-3" id="flex-parent-element" type="" method="">
    <div class="row">
       <div class="column">
       <div id="flex-child-element1">
       
        <div class="col-12" >
        <div class="form-floating">
          <input type="text" class="form-control" id="usersearch" id="form-floating " placeholder="Usuario a buscar" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Usuario a buscar" required>
          <label for="form-floating">&nbsp&nbsp<i class="fas fa-id-user"></i>&nbsp&nbspIngrese Usuario a buscar</label>
        </div>
      </div>

      <br/>
      <br/>
    
      <div id="user-pass-info">
        <div class="form-floating">      
        <input type="text" class="form-control" class="input-field" id="user" id="form-floating " placeholder=" Usuario" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" disabled="disabled" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-user"></i>&nbsp&nbspUsuario</label>
      </div>

      <div class="form-floating">
        <input type="text" class="form-control"  id="password" id="form-floating " placeholder="Contraseña" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="contraseña" disabled="disabled"  required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-key"></i>&nbsp&nbspContraseña</label>
      </div>

    </div>   

    <div class="col-12" >
      <div class="form-floating">
        <input type="number" class="form-control" id="cedula_usuario" id="form-floating " placeholder="Cedula" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="cedula" disabled="disabled"  required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-id-card"></i>&nbsp&nbspCedula</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="nombre_usuario" id="form-floating " placeholder="Nombre Completo" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="nobmre" disabled="disabled"  required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-signature"></i>&nbsp&nbspNombre Completo</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="email" class="form-control" id="email_usuario" id="form-floating " placeholder="Correo Electronico" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" disabled="disabled"  name="correo" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-at"></i>&nbsp&nbspCorreo Electronico</label>
      </div>
    </div>
    </div>
  </div>
  <div class="column">
     <div id="flex-child-element">
      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='/insertarusuario.jsp'">Crear Nuevo Usuario</button>
      <button type="button" class="btn btn-info btn-lg" onclick="enviar()">Consultar Usuario</button>
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
function enviar() {

	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var user=   document.getElementById("usersearch").value;
	req.open('GET', 'http://localhost:8080/consultarusuario?usuario='+user, false);
	req.send(null);
	var usuario = null;
	if (req.status == 200)
		usuario = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	


	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(usuario.toString());
	
if (usuario.toString()!=""){

	document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
	document.getElementById("email_usuario").value = usuario[0].email_usuario;
	document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
	document.getElementById("password").value = usuario[0].password;
	document.getElementById("user").value = usuario[0].usuario;
	
	document.getElementById("usersearch").value = "";


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("cedula_usuario").value = "";
	document.getElementById("email_usuario").value = "";
	document.getElementById("nombre_usuario").value = "";
	document.getElementById("password").value = "";
	document.getElementById("user").value = "";
}
}
	</script>  
</body>

</html>