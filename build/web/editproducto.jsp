
<%@page import="VO.productVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Matricula</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="file/style.css" rel="stylesheet">
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#imageResult')
                                .attr('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }

            $(function () {
                $('#upload').on('change', function () {
                    readURL(input);
                });
            });

            /*  ==========================================
             SHOW UPLOADED IMAGE NAME
             * ========================================== */
            var input = document.getElementById('upload');
            var infoArea = document.getElementById('upload-label');

            input.addEventListener('change', showFileName);
            function showFileName(event) {
                var input = event.srcElement;
                var fileName = input.files[0].name;
                infoArea.textContent = 'File name: ' + fileName;
            }
        </script>

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


        <!-- Page content holder  <div class="container py-5"> -->
        <div class="page-content p-5" id="content">
            <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
                <i class="fa fa-bars mr-2"></i>
                <small class="text-uppercase font-weight-bold">Menu</small></button>

            <div class="row">
                <div class="col-md-10 mx-auto">

                </div></div>
            <br/>
            <%
                Integer dato = 0;
                try {
                    productVO img = (productVO) request.getAttribute("row");
                    dato = img.getCodigo();
                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                }

            %>
            <form name="Modificar" action="ControllerImagen" method="POST" class = "form-horizonta" enctype="multipart/form-data">

                <fieldset class="border p-2 border-dark">
                    <legend class="w-auto" style="color: white">Producto</legend>

                    <div class="form-group row">
                        <div class= "col-sm-6">
                            <label for="nombre" style="color: white">Nombre del producto</label>
                            <input type="text" class="form-control" name="nombre" 
                                   value="<c:out value="${row.nombre}" />" required>
                        </div>
                        <div class= "col-sm-6" >
                            <label for="categoria" style="color: white">Categoria</label>
                            <input type="text" class="form-control" name="categoria" 
                                   value="<c:out value="${row.categoria}" />" required>  
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class= "col-sm-6">
                            <label for="precio" style="color: white">Precio</label>
                            <input type="text" class="form-control" name="precio" 
                                   value="<c:out value="${row.precio}"/>"  required>  
                        </div>
                        <div class= "col-sm-6" style="color: white">
                            <label for="cantidad">Cantidad</label>
                            <input type="text" class="form-control" name="cantidad" 
                                   value="<c:out value="${row.cantidad}"/>"  required>  
                        </div>
                    </div>

                    <div class= "col-sm-6" style="color: white">
                        <label for="modelo">Modelo</label>
                        <input type="text" class="form-control" name="modelo" 
                               value="<c:out value="${row.modelo}"/>" >  
                    </div>

                    <div class="row py-4">
                        <div class="col-lg-6 mx-auto">

                         <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm  ">
                                        <input type="file" onchange="readURL(this);" class="" style="opacity: 1;" name="upload">
                                  
                                   </div>

                            <p class="font-italic text-white text-center">La imagen se cargara debajo</p>
                            <div class="image-area mt-4"><img id="imageResult" src="#" alt="" class="img-fluid rounded shadow-sm mx-auto d-block"></div>

                        </div>
                    </div>

                </fieldset>

                <br/>
                <button type="submit" class="btn btn-primary" name="action">Actualizar</button>
            </form>


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