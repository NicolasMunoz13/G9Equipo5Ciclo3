<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Actualización de Proveedor</title>
	
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
				<h3>Módulos</h3>
			</span>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link"  href="listausuarios.jsp"><h3>Usuarios</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listaclientes.jsp" ><h3>Clientes</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="listaproveedores.jsp"><h3> <i class="fas fa-address-card"></i> Proveedores</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="insertarproducto.jsp"><h3>Productos</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="listaventas.jsp"><h3>Ventas</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reportes.jsp"><h3>Reportes</h3></a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Zona de ingreso de ingreso de informacio -->
<div class="full-form">
  
  <div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error al actualizar el proveedor, verifique que el nit sea válido</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Proveedor actualizado con exito</div>
				
<div style="padding-left: 5px">
	<center>
		<h1>
			Recuerde que debe ingresar el NIT para modificar los otros datos
		</h1>
	</center>
		<div class="container">
				
				
  <form class="row g-3" id="flex-parent-element" type="" method="">
    <div class="row">
       <div class="column">
       <div id="flex-child-element1">
  
    
           <div id="user-pass-info">
        <div class="form-floating">      
        <input type="text" class="form-control" class="input-field" id="nitproveedor" id="form-floating " placeholder=" Nit" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-id-card"></i>&nbsp&nbspNit</label>
      </div>

      <div class="form-floating">
        <input type="text" class="form-control"  id="ciudad_proveedor" id="form-floating " placeholder="Ciudad Proveedor" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Ciudad Proveedor" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-user"></i>&nbsp&nbspCiudad Proveedor</label>
      </div>

    </div>   

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="direccion_proveedor" id="form-floating " placeholder="Dirección de Proveedor" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Dirección de Proveedor" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-house-user"></i>&nbsp&nbspDirección de Proveedor</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="nombre_proveedor" id="form-floating " placeholder="Nombre Proveedor" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Nombre Proveedor" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-mobile-alt"></i>&nbsp&nbspNombre Proveedor</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="telefono_proveedor" id="form-floating " placeholder="Telefono Proveedor" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="telefono proveedor" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-at"></i>&nbsp&nbspTelefono Proveedor</label>
      </div>
    </div>
    
    <button type="button" class="btn btn-warning" onclick="actualizar()">
				<i class="fas fa-edit"></i> Actualizar Proveedor
			</button>
    
    </div>
  </div>
  <div class="column">
     <div id="flex-child-element">
      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='<%=request.getContextPath()%>/insertarproveedor.jsp'">Crear Proveedor</button>
      <button type="button" class="btn btn-info btn-lg" onclick= "window.location.href='<%=request.getContextPath()%>/consultarproveedor.jsp'">Consultar Proveedor</button>
      <button type="button" class="btn btn-warning btn-lg"onclick="window.location.href='<%=request.getContextPath()%>/actualizarproveedor.jsp'">Actualizar Proveedor</button>
      <button type="button" class="btn btn-danger btn-lg" onclick= "window.location.href='<%=request.getContextPath()%>/eliminarproveedor.jsp'">Borrar Proveedor</button>
      <button type="button" class="btn btn-info btn-lg" onclick="window.location.href='<%=request.getContextPath()%>/listaproveedores.jsp'">Lista de Proveedores</button>
    </div>
  </div>
</div>


  </form>
</center>

</div>

<script>
		function actualizar() {
			
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			
			
			var y = document.getElementById("nitproveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET',  baseUrl+'/listaprovedores', false);
			req.send(null);
			var proveedores=null;
			if (req.status == 200)
				proveedores=JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText));
			  	
			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nit_proveedor);
				
				if (proveedores[i].nitproveedor ==y ) {
					console.log(proveedores[i].nitproveedor +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia!=false){
				var formData = new FormData();
					formData.append("nitproveedor", document.getElementById("nitproveedor").value);
					formData.append("ciudad_proveedor", document.getElementById("ciudad_proveedor").value);
					formData.append("direccion_proveedor", document.getElementById("direccion_proveedor").value);
					formData.append("nombre_proveedor",document.getElementById("nombre_proveedor").value);
					formData.append("telefono_proveedor",document.getElementById("telefono_proveedor").value);
					var xhr = new XMLHttpRequest();
					xhr.open("PUT", baseUrl+ "/actualizarproveedor");
					
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("nitproveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
					xhr.send(formData);

			}else{
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nitproveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
			}	
		}
	</script> 
</body>

</html>