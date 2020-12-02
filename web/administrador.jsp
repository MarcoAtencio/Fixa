<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Examen T3</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="file/style.css" rel="stylesheet">

    </head>
    
    <body class = "fondo2">
        <div class="vertical-nav bg-white" id="sidebar">
            <div class="py-4 px-3 mb-4 bg-light">
                <div class="media d-flex align-items-center" style="color: blue"><img src="img/logo.png" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
                    <div class="media-body">
                        <h4 class="m-0">FIXA - ADMIN</h4>
                        <H6 class="m-0" >PANEL DE CONTROL</H6>
                    </div>
                </div>
            </div>
            <ul class="nav flex-column bg-white mb-0">
                <p class="text-dark font-weight-bold text-uppercase px-3 small pb-4 mb-0" style="color: " >Menu Principal</p>


                <li class="nav-item">
                    <a href="administrador.jsp" class="nav-link text-dark font-italic bg-light">
                        <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                        Inicio
                    </a>
                </li>
                <li class="nav-item">
                    <a href="index.jsp" class="nav-link text-dark font-italic">
                        <i class="fa fa-archive mr-3 text-primary fa-fw"></i>
                        Vista de Pagina
                    </a>
                </li>
                <li class="nav-item">
                    <a href="ControllerImagen?action=insert" class="nav-link text-dark font-italic">
                        <i class="fa fa-archive mr-3 text-primary fa-fw"></i>
                        Registrar Producto
                    </a>
                </li>
                <li class="nav-item">
                    <a href="producto.jsp" class="nav-link text-dark font-italic">
                        <i class="fa fa-archive  mr-3 text-primary fa-fw"></i>
                        Listar Productos
                    </a>
                </li>
            </ul>

            <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Personal</p>

         
            <ul class="nav flex-column bg-white mb-0">
                <li class="nav-item">
                  
                        <%
                            HttpSession sesion = request.getSession();
                            String usuario;
                            String nivel;

                            if (sesion.getAttribute("user") != null && sesion.getAttribute("nivel") != null) {
                                usuario = sesion.getAttribute("user").toString();
                                nivel = sesion.getAttribute("nivel").toString();
                                out.print("<a href='LoginFixa.jsp?cerrar=true'  class='nav-link text-dark font-italic' ><i class='fa fa-id-card-o  mr-3 text-primary fa-fw'></i>Cerrar Sesion : " + usuario + " </a>");
                            } else {
                                out.print("<script>location.replace('LoginFixa.jsp');</script>");
                            }
                        %>
                   
                </li>
            </ul>


        </div>
        <!-- End vertical navbar -->


        <!-- Page content holder -->
        <div class="page-content p-5" id="content">
            <!-- Toggle button -->
            <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
                <i class="fa fa-bars mr-2"></i>
                <small class="text-uppercase font-weight-bold">Menu</small></button>

            <!-- Demo content -->
            <h2 class="display-4 text-white text-center">FIXA S.A</h2>
            <p class="lead text-white mb-0 text-center">BIENVENIDOS</p>
            <div class="separator"></div>
            <img src="img/sistemas.jpg" class="rounded mx-auto d-block" width="450" height="250">

        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->


        <script src="js/jquery-3.5.1.min.js"></script> 
        <script src="js/jquery-3.3.1.slim.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <script>
            $("#sidebarCollapse").click(function (e) {
                e.preventDefault();
                $('#sidebar, #content').toggleClass('active');
            });
        </script>
    </body>
</html>
