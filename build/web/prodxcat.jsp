<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

        <!-- /tab -->
 
            <!-- container -->
      <div class="container">
                <!-- row -->
       <div class="row"> 
        <div class="col-md-12">
         <div class="row">
          <div class="products-tabs">
                                <!-- tab -->
           <div id="tab1" class="tab-pane active">
               <br><div id="slick-nav-1" class="products-slick-nav"></div><br>
            <div class="products-slick" data-nav="#slick-nav-1">
                
            <c:forEach var = "p" items="${productos}">
                <!-- product -->
                <div class="product">
                    <div class="product-img">
                        <img src="${p.getFoto()}" >
                        <div class="product-label">
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">${p.getCategoria()}</p>
                        <h3 class="product-name"><a href="#">${p.getNombre()}</a></h3>
                        <h4 class="product-price">S/${p.getPrecio()}</h4>
                        <h3 class="product-name">${p.getModelo()}</h3>
                        <div class="product-btns">
                            <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Vista Rapida</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                       <%
                            if (sesion.getAttribute("user") == null && sesion.getAttribute("nivel") == null) {
                               %>  
                                 <a href="LoginFixa.jsp" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                           <%  } else { %>
                              <a href="ControllerCart?action=addCart&id=${p.getCodigo()}" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                      
                    </div>
                </div>
                        </c:forEach>
                <!-- /product -->
                        </div>
                    
                  </div>
                                <!-- /tab -->
              </div>
                </div></div></div></div>
               
        
                          
        <!-- /tab -->


<%@include file="pie.jsp" %>