<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>
<%@include file="header2.jsp" %>

<br>
<br>
<div class="container">
    <br>
    <h1>Reporte de la compra</h1>
    <br>
    <div class="row">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead class="thead-dark">
                    <tr>
                        <th>Codigo Producto</th>
                        <th>Producto</th>
                        <th>Categoria</th>
                        <th>Cantidad</th>
                        <th>Precio/unidad</th>
                        <th>SubTotal</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var = "p" items="${productos}">
                        <tr>
                        <td>${p.getCod_prod()}</td>
                        <td>${p.getProducto()}</td>
                        <td>${p.getCategoria()}</td>
                        <td>${p.getCantidad()}</td>
                        <td>${p.getPrecio()}</td>
                        <td>${p.getSubprecio()}</td>
                       
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        
<nav aria-label="...">
        <ul class="pager">
            <li><a href="Compra?action=viewdet">Regresar al historial</a></li>
        </ul>
    </nav>
    </div>
</div>
<br>
<br>
<%@include file="pie.jsp" %>

