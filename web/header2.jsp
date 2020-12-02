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
         <link href="file/profile.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <style>
            .ocultar {
                display: none;
            }

            .mostrar {
                display: block;
            }
        </style>
        <script>
            function verificarPasswords() {
                    pass1 = document.getElementById('pass1');
                    pass2 = document.getElementById('pass2');
                    if (pass1.value != pass2.value) {
                        document.getElementById("error").classList.add("mostrar");
                        return false;
                    } else {
                        document.getElementById("error").classList.remove("mostrar");
                        document.getElementById("ok").classList.remove("ocultar");
                        document.getElementById("login").disabled = true;

                        setTimeout(function() {
                            location.reload();
                        }, 3000);
                        return true;
                    }
}
            </script>
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
    </head>
    <body>
        <!-- HEADER -->
        <header>
           
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +51 981353626</a></li>
                       <li><a href="" onclick="ventanaEmergenteCentrada ('contactanos.jsp', 640, 480); return(false);" title=""><i class="fa fa-envelope-o"></i>fijacionesyperforacion@fixaperu.com</a></li>
           <li><a href="Ubicacion.jsp"><i class="fa fa-map-marker"></i> Parque Industrial, Callao 07006</a></li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><a href="#"><i class="fa fa-money"></i> Soles</a></li>
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

                      

                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Wishlist -->
                           
                                <!-- /Wishlist -->

                             

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