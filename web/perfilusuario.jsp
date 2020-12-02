
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@include file="header2.jsp" %>

<!-- /CUERPO -->
<br>
<br>
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
         
                <button type="button" class="btn btn-info  btn-sm">Mesajes</button>
            </div>
            <div class="profile-usermenu">
                <ul class="nav">
                    <li class="active">
                        <a href="#">
                            <i class="icon-home"></i>Configurar mi usuario </a>
                    </li>
                    <li>
                        <a href="Compra?action=viewdet">
                            <i class="icon-settings"></i>Historial de Compras </a>
                    </li>
                    <li>
                        <a href="ControllerUsuario?action=edit2">
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
                    <span class="caption-subject font-blue-madison bold uppercase">Tu informacion</span>
                </div>
            </div>
            <div class="portlet-body">
                <div>
                
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Perfil</a></li>
                    </ul>
                
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                           <form name="Modificar" action="ControllerUsuario" method="POST" class = "form-horizonta">

                              <div class="form-group">
                                <label for="inputName">Nombre</label>
                                <input type="text" name = "nombre" class="form-control" id="inputName" placeholder="Ingrese Nombre" value="<c:out value="${usua.getNombre()}" />" required>
                              </div>
                                <div class="form-group">
                                <label for="inputLastName">Apellido</label>
                                <input type="text" name = "apell" class="form-control" id="inputLastName" placeholder="Ingrese Apellido" value="<c:out value="${usua.getApellido()}" />" required>
                              </div>
                                <div class="form-group">
                                <label for="exampleInputDirec">Direccion</label>
                                <input type="text" name= "direc" class="form-control" id="exampleInputEmail1" placeholder="Direccion" value="<c:out value="${usua.getDireccion()}" />" required>
                              </div>
                             
                              <div class="form-group">
                                <label for="inputTelephone">Telefono</label>
                                <input type="text" name="telef" class="form-control" id="exampleInputPassword1" placeholder="Telefono" value="<c:out value="${usua.getTelef()}" />" required>
                              </div>
                              <div class="checkbox">
                                <label>
                                  <input type="checkbox" name="type[]" value="verificacion" required /> Verificacion
                                </label>
                              </div>
                              <button type="submit" class="btn btn-default"  name="action">Guardar cambios</button>
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

<!-- /CUERPO -->
     <%@include file="pie.jsp" %>