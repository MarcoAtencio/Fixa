<%@include file="header.jsp" %>

        <!-- /NAVIGATION -->

        <!-- SECTION -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- shop -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="./img/brocas.jpg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Catalogo<br>Brocas</h3>
                                <a href="ControllerList?action=listar&cod=Broca" class="cta-btn">Comprar Ahora<i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /shop -->

                    <!-- shop -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="./img/perno.jpg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Catalogo<br>Pernos</h3>
                                <a href="ControllerList?action=listar&cod=Perno" class="cta-btn">Comprar Ahora <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /shop -->

                    <!-- shop -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="./img/clavo.jpeg" alt="">
                            </div>
                            <div class="shop-body">
                                <h3>Catalogo<br>Clavos de anclaje</h3>
                                <a href="ControllerList?action=listar&cod=Clavo" class="cta-btn">Comprar Ahora <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- /shop -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

        <!-- SECTION -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">

                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h3 class="title">Productos Nuevos</h3>
                            <div class="section-nav">

                            </div>
                        </div>
                    </div>
                    <!-- /section title -->

                    <!-- Products tab & slick -->
                    <div class="col-md-12">
                        <div class="row">
                            <div class="products-tabs">
                                <!-- tab -->
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/PUNZONADOR_M62.jpg" alt="">
                                                <div class="product-label">
                                                    <span class="sale">-30%</span>
                                                    <span class="new">NUEVO</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">PUNZONADOR</p>
                                                <h3 class="product-name"><a href="#">punzonador M6</a></h3>
                                                <h4 class="product-price">S/45.50 <del class="product-old-price">S/65.00</del></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=63" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/PUNZONADOR_M12.jpg" alt="">
                                                <div class="product-label">
                                                    <span class="new">NUEVO</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">PUNZONADOR</p>
                                                <h3 class="product-name"><a href="#">PUNZONADOR M12</a></h3>
                                                <h4 class="product-price">S/95.00</h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=66" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/CLAVO_CABEZA_2.jpg" alt="">
                                                <div class="product-label">

                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">CLAVO</p>
                                                <h3 class="product-name"><a href="#">CLAVO CABEZA 2"</a></h3>
                                                <h4 class="product-price">S/ 25.00 </h4>
                                                <div class="product-rating">
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=60" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/B_20_210.jpg" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">BROCA</p>
                                                <h3 class="product-name"><a href="#">BROCA 20 X 210</a></h3>
                                                <h4 class="product-price">S/40.00 </h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=73" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/B_20_260.jpg" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">BROCA</p>
                                                <h3 class="product-name"><a href="#">BROCA 20 X 260</a></h3>
                                                <h4 class="product-price">S/65.00 </h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=74" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->
                                    </div>
                                   
                                </div>
                                <!-- /tab -->
                            </div>
                        </div>
                    </div>
                    <!-- Products tab & slick -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>


        <!-- SECTION -->

        
        
           <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">

                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h3 class="title">Productos Mas Vendidos</h3>
                            <div class="section-nav">

                            </div>
                        </div>
                    </div>
                    <!-- /section title -->

                    <!-- Products tab & slick -->
                    <div class="col-md-12">
                        <div class="row">
                            <div class="products-tabs">
                                <!-- tab -->
                                <div id="tab1" class="tab-pane active">
                                    <div class="products-slick" data-nav="#slick-nav-1">
                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/PUNZONADOR_M62.jpg" alt="">
                                                <div class="product-label">
                                                    <span class="sale">-30%</span>
                                                    <span class="new">NUEVO</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">PUNZONADOR</p>
                                                <h3 class="product-name"><a href="#">punzonador M6</a></h3>
                                                <h4 class="product-price">S/45.50 <del class="product-old-price">S/65.00</del></h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=63" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/PUNZONADOR_M12.jpg" alt="">
                                                <div class="product-label">
                                                    <span class="new">NUEVO</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">PUNZONADOR</p>
                                                <h3 class="product-name"><a href="#">PUNZONADOR M12</a></h3>
                                                <h4 class="product-price">S/95.00</h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=66" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/CLAVO_CABEZA_2.jpg" alt="">
                                                <div class="product-label">

                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">CLAVO</p>
                                                <h3 class="product-name"><a href="#">CLAVO CABEZA 2"</a></h3>
                                                <h4 class="product-price">S/ 25.00 </h4>
                                                <div class="product-rating">
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=60" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/B_20_210.jpg" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">BROCA</p>
                                                <h3 class="product-name"><a href="#">BROCA 20 X 210</a></h3>
                                                <h4 class="product-price">S/40.00 </h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=73" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->

                                        <!-- product -->
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="./img/B_20_260.jpg" alt="">
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">BROCA</p>
                                                <h3 class="product-name"><a href="#">BROCA 20 X 260</a></h3>
                                                <h4 class="product-price">S/65.00 </h4>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
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
                              <a href="ControllerCart?action=addCart&id=74" class="add-to-cart-btn btn-block "><i class="fa fa-shopping-cart"></i>Agregar al Carrito </a>
                          <%   }
                        %>
                                            </div>
                                        </div>
                                        <!-- /product -->
                                    </div>
                               
                                </div>
                                <!-- /tab -->
                            </div>
                        </div>
                    </div>
                    <!-- Products tab & slick -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

<%@include file="pie.jsp" %>