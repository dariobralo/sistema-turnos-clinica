<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/header.jsp"%>
    <body id="page-top">
        <%@include file="components/bodytop.jsp" %>

        <!-- Content Row -->
        <h1>Nuevo Usuario</h1>
        <form class="user" action="SvUsuarios" method="post">
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                           placeholder="Nombre Usuario">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                           placeholder="Contraseña">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="rol" name="rol"
                           placeholder="Rol">
                </div>
                
            </div>
            
            <button type="submit" class="btn btn-primary btn-user btn-block">
                Crear Nuevo Usuario
            </button>
            <hr>
            
        </form>
        <!-- End Content Row -->

        <%@include file="components/bodybuttom.jsp"%>   
    </body>
</html>

