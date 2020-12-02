<!DOCTYPE html>
<html>
    <head>
        <title>FIXA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel = "icon" href ="img/logo.png" type = "image/x-icon"> 

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
      
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
          <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="https://api.whatsapp.com/send?phone=981353354" target="_blank"><i class="fa fa-phone"></i> +51 981353626</a></li>
                        <li><a href="" onclick="ventanaEmergenteCentrada ('contactanos.jsp', 640, 480); return(false);" title=""><i class="fa fa-envelope-o"></i>fijacionesyperforacion@fixaperu.com</a></li>
                        <li><a href="Ubicacion.jsp"><i class="fa fa-map-marker"></i> Parque Industrial, Callao 07006</a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><p style="color:#fff" ><i class="fa fa-money"></i> Soles</p></li>
                                
                        
                     <%       HttpSession sesion = request.getSession();
            String usuario;
            String nivel;
            
            if(sesion.getAttribute("user")!= null && sesion.getAttribute("nivel")!=null){
                usuario =sesion.getAttribute("user").toString();
                nivel =sesion.getAttribute("nivel").toString();
                out.print("<li><a href='LoginFixa.jsp?cerrar=true'><i class='fa fa-user-o'></i> Cerrar session : "+usuario+"</li>");
               if(nivel.equals("2")){
               out.print("<li><a href='administrador.jsp'><i class='fa fa-cog' aria-hidden='true'></i>Configuracion</a></li>");
               }
               else if(nivel.equals("1")){
               out.print("<li><a href='ControllerUsuario?action=editUser'><i class='fa fa-cog' aria-hidden='true'></i>Configurar cuenta</a></li>");
               }else {}
                
            }else {
                
                out.print("<li><a href='LoginFixa.jsp'><i class='fa fa-user-o'></i> Mi cuenta</a>");
                
            }
            %>
           

        
                    </ul>
                </div>
            </div>
            <!-- /TOP HEADER -->
                       <script>
  function obtenerAnchoSegunNavetadorWeb ()
  {
    if (navigator.userAgent.indexOf("MSIE") > 0)
    {
      return(document.body.clientWidth);
    }
    else
    {
      return window.outerWidth;
    }
  }

  function obtenerAltoSegunNavetadorWeb()
  {
    if (navigator.userAgent.indexOf("MSIE") > 0)
    {
      return(document.body.clientHeight);
    }
    else
    {
      return(window.outerHeight);
    }
  }

  var ventanaEm = new Object()
  function ventanaEmergenteCentrada (paginaMostrar, ancho, alto)
  {
    var X = obtenerAnchoSegunNavetadorWeb() / 2
    var Y = obtenerAltoSegunNavetadorWeb() / 2
    ventanaEm = window.open(paginaMostrar, 'PopUp', 'scrollbars=yes ' + 'width=' + ancho + ' ' +
       'height=' + alto + ' ' + 'top=' + (window.screenTop +
      (Y - (alto/2))) + ' ' + 'left=' +
      (window.screenLeft + (X - (ancho/2))))
    ventanaEm.focus()
  }
</script>
            <!-- MAIN HEADER -->
            <div id="header" >
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- LOGO -->
                        <div class="col-md-3">
                            <div class="header-logo">
                                <a href="index.jsp" class="logo">
                                    <img src="./img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->
                        <div class="col-md-6">
                            <div class="header-search">
                                <form action="ControllerList">
                                    <select class="input-select">
                                        <option value="0">Todas</option>
                                    </select>
                                    <input class="input" placeholder="Buscar aqui" name="nombre">
                                    <input class="input" value="buscar" name="action" type="hidden">
                                    <button class="search-btn">Buscar</button>
                                </form>
                            </div>
                        </div>
                        <!-- /SEARCH BAR -->

                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Wishlist -->
                           
                                <!-- /Wishlist -->

                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <i class="fa fa-shopping-cart"></i>
                                    </a>
                                                                       <%
                            if (sesion.getAttribute("user") == null && sesion.getAttribute("nivel") == null) {
                                
                                  out.print("<a href='LoginFixa.jsp'>Ver Carrito <i class='fa fa-arrow-circle-right'></i></a>");
                            } else {
                              out.print("<a href='ControllerCart?action=vercart'>Ver Carrito <i class='fa fa-arrow-circle-right'></i></a>");
                            }
                        %>
                                </div>
                                <!-- /Cart -->

                                <!-- Menu Toogle -->
                                <div class="menu-toggle">
                                    <a href="#">
                                        <i class="fa fa-bars"></i>
                                        <span>Menu</span>
                                    </a>
                                </div>
                                <!-- /Menu Toogle -->
                            </div>
                        </div>
                        <!-- /ACCOUNT -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->

        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li ><a href="index.jsp">Principal</a></li>
                        <li ><a href="ControllerList?action=listar&cod=Clavija">Clavijas</a></li>
                        <li ><a href="ControllerList?action=listar&cod=Clavo">Clavo de cabeza</a></li>
                        <li ><a href="ControllerList?action=listar&cod=Punzonador">Punzonador</a></li>
                        <li ><a href="ControllerList?action=listar&cod=Perno">Pernos de expanción</a></li>
                        <li ><a href="ControllerList?action=listar&cod=Broca">Brocas</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->

        <!-- SECTION -->
        