<%@page import="DAO.carritoDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>
<link rel="stylesheet" href="css/estilos.css">
<link rel="stylesheet" href="css/carroderecha.css">

<%@include file="header.jsp" %>
<link rel="stylesheet" href="css/tarjeta.css">


<br>
              

<div class="container">
    <div class="row">
    <div class="col-lg-8">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Foto</th>
                        <th>Producto</th>
                        <th>Categoria</th>
                        <th>Cantidad</th>
                        <th>Pr/Unidad</th>
                        <th>Total</th>
                        <th>Accion</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var = "p" items="${productos}">
                        <tr>
                        <td>${p.getCod_prod()}</td>
                        <td><img src="${p.getFoto()}" width="80" height="80"></image></td>
                        <td>${p.getProducto()}</td>
                        <td>${p.getCategoria()}</td>
                        <td>${p.getCantidad()}</td>
                        <td>${p.getPrecio()}</td>
                        <td>${p.getSubprecio()}</td>
                        <td>
                            <a href="ControllerCart?action=delet&id=${p.getCod_prod()}"> <img src="img/delete.png" title="Eliminar"/></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
    </div>
            <div class="col-lg-4 ">
                       <div class="cart-totals cart-box" style="margin-bottom: 30px;">
			            <h3>Precio Total</h3>
			                <table>
			                    <tbody>
			                        <tr> 
			                            <td>Total</td>
			                            <td class="subtotal">S/<c:out value="${productos[0].getTotal()}" /></td>
			                        </tr>
			                        <tr>
			                            <td>Compras</td>
			                            <td class="free-shipping"></td>
			                        </tr>
			                        <tr class="total-row">
			                            <td>Total</td>
			                            <td class="price-total">S/<c:out value="${productos[0].getTotal()}" /></td>
			                        </tr>
			                    </tbody>
			                </table>
			                <div class="btn-cart-totals">
                                            <%
                                                carritoDAO c = new carritoDAO();
                                                int aux, aux2;
                                                String usu1 = sesion.getAttribute("user").toString();;
                                                aux = c.getNULL(usu1);
                                                aux2 = c.getValidarCarrito(usu1);
                                                   
                                                if (aux == 1) {
                                                   %>  
                                                     <script>
                                                        function myFunction() {
                                                          alert("Actualiza sus datos personales!");
                                                        }
                                                        </script>
                                                     <a href="perfilusuario.jsp" class="checkout round-black-btn" onclick="myFunction()">Comprar</a>
                                               <%  } else if (aux2 == 0) {
                                                   %>  
                                                    <script>
                                                        function myFunction() {
                                                          alert("No tienes productos!");
                                                        }
                                                        </script>
                                                     <a href="index.jsp" class="checkout round-black-btn" title="" onclick="myFunction()" >Comprar</a>
                                               <%  } else { %>
                                                   <button id="myBtn" class="checkout round-black-btn">Comprar</button>
                                                <%   }
                                            %>
			                    </div>
			                <!-- /.btn-cart-totals -->
			            <!-- /form -->
			        </div>
                
                
     </div>
        </div>
    </div> 
                                            <div id="myModal" class="modal">

  <!-- Modal content -->
 <div class="modal-content fondo4">
    <div class="modal-header ">
      <span class="close color-close">×</span>
      
      
        <div class="contenedor contenedor-f">
		<!-- Tarjeta -->
		<section class="tarjeta" id="tarjeta">
			<div class="delantera">
				<div class="logo-marca" id="logo-marca">
					<!-- <img src="img/logos/visa.png" alt=""> -->
				</div>
				<img src="img/chip-tarjeta.png" class="chip" alt="">
				<div class="datos">
                                    <div class="grupo" id="numero">
						<p class="label">Número Tarjeta</p>
						<p class="numero">#### #### #### ####</p>
					</div>
					<div class="flexbox">
						<div class="grupo" id="nombre">
							<p class="label">Nombre Tarjeta</p>
							<p class="nombre">Usuario</p>
						</div>

						<div class="grupo" id="expiracion">
							<p class="label">Expiracion</p>
							<p class="expiracion"><span class="mes">MM</span> / <span class="year">AA</span></p>
						</div>
					</div>
				</div>
			</div>

			<div class="trasera">
				<div class="barra-magnetica"></div>
				<div class="datos">
					<div class="grupo" id="firma">
						<p class="label">Firma</p>
						<div class="firma"><p></p></div>
					</div>
					<div class="grupo" id="ccv">
						<p class="label">CCV</p>
						<p class="ccv"></p>
					</div>
				</div>
				<p class="leyenda">Compra seguro, compra feliz, tus datos y tu dinero estan seguros con nosotros, despreocupate.</p>
				<a href="#" class="link-banco">www.tudeuda.com</a>
			</div>
		</section>

		<!-- Contenedor Boton Abrir Formulario -->
		<div class="contenedor-btn">
			<button class="btn-abrir-formulario" id="btn-abrir-formulario">
				<i class="fas fa-plus"></i>
			</button>
		</div>

		<!-- Formulario -->
                <form name="comprar" action="ControllerCart" id="formulario-tarjeta" class="formulario-tarjeta" method="POST">
			<div class="grupo">
				<label for="inputNumero">Número Tarjeta</label>
                                <input type="text" id="inputNumero" maxlength="19" autocomplete="off" name="numero" required>
			</div>
			<div class="grupo">
				<label for="inputNombre">Nombre</label>
				<input type="text" id="inputNombre" maxlength="19" autocomplete="off" required>
			</div>
			<div class="flexbox">
				<div class="grupo expira">
					<label for="selectMes">Expiracion</label>
					<div class="flexbox">
						<div class="grupo-select">
							<select name="mes" id="selectMes">
								<option disabled selected>Mes</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
						<div class="grupo-select">
							<select name="year" id="selectYear">
								<option disabled selected>Año</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
				</div>

				<div class="grupo ccv">
					<label for="inputCCV">CCV</label>
					<input type="text" id="inputCCV" maxlength="3" required>
				</div>
			</div>
                    <button type="submit" class="btn-enviar" name="action" onclick="javascript:enviaycerrar();">Enviar</button>
		</form>
	</div>

</div>
</div>
</div>


      <script > 
            function enviaycerrar() {
            if (confirm('¿Estas seguro desea comprar este producto?')) {
               document.form1.submit();
               alert("Su pago ha sido enviado, muchas gracias por participar");
               window.close();
            }
        }
        </script>
  
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}



</script>
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main2.js"></script>
<script src="js/carrod.js"></script>
<%@include file="pie.jsp" %>

<script src="js/carrod.js"></script>