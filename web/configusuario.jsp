
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@include file="header2.jsp" %>
<!-- /CUERPO -->
<br>
<br>
<div id="msg"></div>
 
<!-- Mensajes de Verificación -->
<div id="error" class="alert alert-danger ocultar" role="alert">
    Las Contraseñas no coinciden, vuelve a intentar !
</div>
<div id="ok" class="alert alert-success ocultar" role="alert">
    Las Contraseñas coinciden ! (Procesando formulario ... )
</div>

<div class="container"> 
<div class="col-md-12">  
    <div class="col-md-4">      
        <div class="portlet light profile-sidebar-portlet bordered">
            <div class="profile-userpic">
                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" class="img-responsive" alt=""> </div>
            <div class="profile-usertitle">
            
                <div class="profile-usertitle-job"> CLIENTE </div>
            </div>
            <div class="profile-userbuttons">
         
                <button type="button" class="btn btn-info  btn-sm">Mensajes</button>
            </div>
            <div class="profile-usermenu">
                <ul class="nav">
                    <li >
                        <a href="ControllerUsuario?action=editUser">
                            <i class="icon-home"></i>Configurar mi usuario </a>
                    </li>
                    <li>
                        <a href="Compra?action=viewdet">
                            <i class="icon-settings"></i>Historial de Compras </a>
                    </li>
                    <li class="active">
                        <a href="#">
                            <i class="icon-info"></i>Configuracion </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-8"> 
        <div class="portlet light bordered">
            <div class="portlet-title tabbable-line">
                <div class="caption caption-md">
                    <i class="icon-globe theme-font hide"></i>
                    <span class="caption-subject font-blue-madison bold uppercase">Configuracion</span>
                </div>
            </div>
            <div class="portlet-body">
                <div>
                
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Correo</a></li>
                    </ul>
                
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <form name="Modificar" onsubmit="verificarPasswords(); return false" action="ControllerUsuario" method="POST" class = "form-horizonta">
                                
                                <div class="form-group">
                                <label for="exampleInputEmail1">Correo</label>
                                <input type="email" name = "correo" class="form-control" id="exampleInputEmail1" placeholder="Direccion" value="<c:out value="${usua.getCorreo()}" />" required>
                                </div>
                             
                              <div class="form-group">
                                <label for="exampleInputPassword1">Contraseña</label>
                                <input type="password" id="pass1" name = "pass1" class="form-control" id="exampleInputPassword1" placeholder="Contraseña" required>
                              </div>
                                
                                <div class="form-group">
                                <label for="exampleInputPassword1">Repetir contraseña</label>
                                <input type="password" id="pass2" name = "pass1" class="form-control" id="exampleInputPassword1" placeholder="Repetir Contraseña" required>
                              </div>
                             
                              <div class="checkbox">
                                <label>
                                  <label>
                                  <input type="checkbox" name="type[]" value="verificacion" required /> Verificacion
                                  </label>
                                </label>
                              </div>
                              <button type="submit" class="btn btn-default" name="action">Guardar Cambios</button>
                            </form>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">Profile</div>
                        <div role="tabpanel" class="tab-pane" id="messages">Messages</div>
                        <div role="tabpanel" class="tab-pane" id="settings">Settings</div>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<br>
<br>

<%@include file="pie.jsp" %>