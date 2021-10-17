<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Consultar Producto</title>
	
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
          <a class="nav-link" href="listaclientes.jsp"><h3>Clientes</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link"   href="listaproveedores.jsp"><h3>Proveedores</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  aria-current="page"  href="insertarproducto.jsp"><h3><i class="fas fa-paperclip"></i>Productos</h3></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="calculoventas.jsp"><h3>Ventas</h3></a>
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
  <center>
  <div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error en busqueda de producto, el producto no existe</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Producto encontrado con exito</div>
				
  <form class="row g-3" id="flex-parent-element" type="" method="">
    <div class="row">
       <div class="column">
       <div id="flex-child-element1">
       
      
        <div class="form-floating">      
        <input type="number" class="form-control" class="input-field" id="codigo_producto" id="form-floating " placeholder=" Codigo" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"  required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-id-card"></i>&nbsp&nbspCódigo</label>
      </div>
      
      <button type="button" class="btn btn-warning" onclick="enviar()">
				<i class="fas fa-edit"></i> Buscar Producto
			</button>
	
      
      <br/>
      <br/>

      <div class="form-floating">
        <input type="text" class="form-control"  id="iva_compra" id="form-floating " placeholder="iva compra" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Iva Compra" disabled="disabled" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-user"></i>&nbsp&nbspIva Compra</label>
      </div>

     

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="nit_proveedor" id="form-floating " placeholder="Nit del Proveedor" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Nit del Proveedor" disabled="disabled" required>
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-house-user"></i>&nbsp&nbspNit del Proveedor</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="nombre_producto" id="form-floating " placeholder="Nombre Producto" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Nombre Producto" disabled="disabled" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-mobile-alt"></i>&nbsp&nbspNombre Producto</label>
      </div>
    </div>

    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="precio_compra" id="form-floating " placeholder="Precio Compra" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Precio Compra" disabled="disabled" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-at"></i>&nbsp&nbspPrecio Compra</label>
      </div>
    </div>
    
    
    <div class="col-12" >
      <div class="form-floating">
        <input type="text" class="form-control" id="precio_venta" id="form-floating " placeholder="Precio Vents" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="Precio Venta" disabled="disabled" required >
        <label for="form-floating">&nbsp&nbsp<i class="fas fa-at"></i>&nbsp&nbspPrecio Venta</label>
      </div>
    </div>
    
    		
    </div>
  </div>
  <div class="column">
     <div id="flex-child-element">
      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='<%=request.getContextPath()%>/insertarproducto.jsp'">Cargar Inventario</button>
      <button type="button" class="btn btn-info btn-lg" onclick="window.location.href='<%=request.getContextPath()%>/consultarproducto.jsp'">Consultar Producto</button>
      <button type="button" class="btn btn-primary btn-lg" onclick="window.location.href='<%=request.getContextPath()%>/listaproductos.jsp'">Lista de Productos</button>
    </div>
  </div>
</div>


  </form>
</center>

</div>

<script>
function enviar() {

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

	
	var req = new XMLHttpRequest();
	var coincidencia = false;
	var codigo=   document.getElementById("codigo_producto").value;
	req.open('GET', baseUrl+'/consultarproducto?codigo_producto='+codigo, false);
	req.send(null);
	var producto = null;
	if (req.status == 200)
		producto = JSON.parse(req.responseText);
	console.log(JSON.parse(req.responseText));
	


	var element = document.getElementById("error");
	element.classList.add("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.remove("visually-hidden");
	
	console.log(producto.toString());
	
if (producto.toString()!=""){

	document.getElementById("iva_compra").value = producto[0].iva_compra;
	document.getElementById("nit_proveedor").value = producto[0].nit_proveedor;
	document.getElementById("nombre_producto").value = producto[0].nombre_producto;
	document.getElementById("precio_compra").value = producto[0].precio_compra;
	document.getElementById("precio_venta").value = producto[0].precio_venta;
	
	document.getElementById("codigo_producto").value = "";


} else {
	var element = document.getElementById("error");
	element.classList.remove("visually-hidden");
	var element2 = document.getElementById("correcto");
	element2.classList.add("visually-hidden");
	document.getElementById("codigo_producto").value = "";
	document.getElementById("iva_compra").value = "";
	document.getElementById("nit_proveedor").value = "";
	document.getElementById("nombre_producto").value = "";
	document.getElementById("precio_compra").value = "";
	document.getElementById("precio_venta").value = "";
}
}
	</script>  
</body>

</html>