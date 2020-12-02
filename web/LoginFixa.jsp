<%@page import="DAO.encoder"%>
<%@page import="DAO.logueo"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LOGIN</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel = "icon" href ="img/logo.ico" type = "image/x-icon"> 

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
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
        <link type="text/css" rel="stylesheet" href="file/login.css"/>
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


    </head>
    <body>
        <div id="msg"></div>

        <!-- Mensajes de Verificación -->
        <div id="error" class="alert alert-danger ocultar" role="alert">
            Las Contraseñas no coinciden, vuelve a intentar !
        </div>
        <div id="ok" class="alert alert-success ocultar" role="alert">
            Las Contraseñas coinciden ! (Procesando formulario ... )
        </div>

            <%
        logueo op = new logueo();
        encoder en = new encoder();
        
        
        if(request.getParameter("btnIngresar")!=null){
            String nombre = request.getParameter("txtUsuario");
            String correo = request.getParameter("txtUsuario");
            String contra = en.ecnode(request.getParameter("txtContra"));
            
            
            switch(op.Loguear(nombre, contra)){
                case 1:
                    session.setAttribute("user", nombre);
                    session.setAttribute("correo", correo);
                    session.setAttribute("nivel", "1");
                    response.sendRedirect("index.jsp");  
                break;
                
                case 2:
                    session.setAttribute("user", nombre);
                    session.setAttribute("correo", correo);
                    session.setAttribute("nivel", "2");
                    response.sendRedirect("administrador.jsp");  
                break;
                
                default:
                    out.write("Usuario no existe");
                break;    
            }
        }
        
            if(request.getParameter("cerrar")!=null){
                session.invalidate();
            }
        %>
        
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><a href="#"><i class="fa fa-phone"></i> +51 981353626</a></li>
                        <li><a href="#"><i class="fa fa-envelope-o"></i> fijacionesyperforacion@fixaperu.com</a></li>
                        <li><a href="Ubicacion.jsp"><i class="fa fa-map-marker"></i> Parque Industrial, Callao 07006</a></li>
                    </ul>
                    <ul class="header-links pull-right">

                        <li><a href="LoginFixa.jsp"><i class="fa fa-user-o"></i> Mi cuenta</a></li>
               
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
                        <div class="col-md-3" >
                            <div class="header-logo"  >
                                <a href="index.jsp" class="logo">
                                    <img src="./img/logo.png" alt=""  >
                                </a>
                            </div>
                        </div>
                        <!-- /LOGO -->

                        <!-- SEARCH BAR -->

                        <!-- /SEARCH BAR -->

                        <!-- ACCOUNT -->

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

        <!-- /NAVIGATION -->
        <!-- /CUERPO -->
        <br>
        <br>
        <br>

        <div class=""  >
    <div class=" p-0"  style="display: flex;width: 100%;justify-content: center;">
        <div class="card" >
            <div class="login-box" >
                <div class="login-snip " > <input id="tab-1" type="radio" name="tab" class="sign-in"  checked><label for="tab-1" class="tab">Iniciar Sesion</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrate</label>
                    <div class="login-space" >
                        <form class="container" action="LoginFixa.jsp" method="post">
                            <div class="login" >
                                <div class="group"> <label for="user" class="label">Usuario</label> <input id="user" type="text" name="txtUsuario" class="input" placeholder="Ingresa tu usuario"> </div>
                                <div class="group"> <label for="pass" class="label">Contraseña</label> <input id="pass" type="password" name="txtContra" class="input" data-type="password" placeholder="Ingresa tu contraseña"> </div>
                                <div class="group"> <input id="check" type="checkbox" class="check" checked> <label for="check"><span class="icon"></span> Mantenerme conectado</label> </div>
                                <div class="group"> <input type="submit" name="btnIngresar" class="button"> </div>
                                <div class="hr"></div>
                                <div class="foot"> <a href="#">¿Olvido su contraseña?</a> </div>
                            </div>
                        </form>
                        <form onsubmit="verificarPasswords(); return false" action="ControllerUser" method="post">
                            <div class="sign-up-form" >
                                <div class="group"> <label for="pass" class="label">Nombre usuario</label> <input name="txtNick" id="pass" type="text" class="input" placeholder="Ingresa tu nick"> </div>
                                <div class="group"> <label for="pass" class="label">Correo Electronico</label> <input name="txtEmail" id="pass" type="text" class="input" placeholder="Ingresa tu correo"> </div>
                                <div class="group"> <label for="pass" class="label">Contraseña</label> <input name="txtContra" id="pass1" type="password" class="input" data-type="password" placeholder="Crear Contraseña"> </div>
                                <div class="group"> <label for="pass" class="label">Repetir Contraseña</label> <input id="pass2" type="password" class="input" data-type="password" placeholder="Repetir Contraseña"> </div>
                                <div class="group"> <input name="btnRegistrar" type="submit" class="button" value="Registrarte"> </div>
                                <div class="hr"></div>
                                <div class="foot"> <label for="tab-1">¿Ya estas registrado?</label> </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



    <br>
    <br>





    <!-- /CUERPO -->
    <!-- FOOTER -->
    <footer id="footer">
        <!-- top footer -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Sobre nosotros</h3>
                            <p>Somos una empresa peruana importadora y comercializadora con más de 59 años de experiencia en sistemas de fijación con el propósito de abastecer y entregar soluciones integrales al mercado de la construcción, industria, minería, etc.</p>
                            <ul class="footer-links">
                                <li><a href="#"><i class="fa fa-map-marker"></i>Parque Industrial, Callao 07006</a></li>
                                <li><a href="#"><i class="fa fa-phone"></i>+51 981353626</a></li>
                                <li><a href="Ubicacion.jsp"><i class="fa fa-envelope-o"></i>fijacionesyperforacion@fixaperu.com</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Categorias</h3>
                            <ul class="footer-links">
                                <li><a href="#">Ofertas</a></li>
                                <li><a href="#">Pernos</a></li>
                                <li><a href="#">Clavijas</a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="clearfix visible-xs"></div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Informacion</h3>
                            <ul class="footer-links">
                                <li><a href="#">Sobre Nosotros</a></li>
                                <li><a href="#">Contactenos</a></li>
                                <li><a href="#">Politica de privacidad</a></li>
                                <li><a href="#">Pedidos y Devoluciones</a></li>
                                <li><a href="#">Terminos y condiciones</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-xs-6">
                        <div class="footer">
                            <h3 class="footer-title">Servicios</h3>
                            <ul class="footer-links">
                                <li><a href="#">Mi cuenta</a></li>
                                <li><a href="#">Ver Carrito</a></li>
                                <li><a href="#">Lista de deseos</a></li>
                                <li><a href="#">Seguimiento de pedido</a></li>
                                <li><a href="#">Ayuda</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /top footer -->

        <!-- bottom footer -->
        <div id="bottom-footer" class="section">
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul class="footer-payments">
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                        </ul>
                        <span class="copyright">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados  
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </span>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->

    <!-- jQuery Plugins -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>

</body>
</html>
