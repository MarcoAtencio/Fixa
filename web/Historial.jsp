<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true"%>
<%@include file="header2.jsp" %>
<br>
<br>

<div class="container">
    <div class="row">
            <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>Codigo Carrito</th>
                        <th>Fecha</th>
                        <th>Pago - Tarjeta</th>
                        <th>Total de compra</th>
                        <th>Mostrar Vista</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var = "p" items="${productos}">
                        <tr>
                        <td>${p.getCod_cart()}</td>
                        <td>${p.getFecha()}</td>
                        <td>${p.getPago()}</td>
                        <td>${p.getTotal()}</td>
                        <td>
                            <a href="Compra?action=view_det&id=${p.getCod_cart()}"> <img src="img/vista.png" width="40" height="40" title="Ver detalle"/></a>
                            <a href="Compra?action=pdf&id=${p.getCod_cart()}" target="_blank"> <img src="img/pdf.png" width="40" height="40" title="Ver detalle"/></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        
        <!-- Button trigger modal -->

    </div>
</div>


<nav aria-label="...">
        <ul class="pager">
            <li><a href="configusuario.jsp">Regresar a la configuracion de la cuenta</a></li>
        </ul>
    </nav>  




<br>
<br>


<%@include file="pie.jsp" %>