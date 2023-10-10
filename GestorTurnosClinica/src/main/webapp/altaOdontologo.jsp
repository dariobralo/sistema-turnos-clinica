<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/header.jsp"%>
    <body id="page-top">
        <%@include file="components/bodytop.jsp" %>

        <!-- Content Row -->
        <h1>Nuevo Odontólogo</h1>
        <form class="user">
            <div class="form-group col">
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="dni"
                           placeholder="Dni">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="nombre"
                           placeholder="Nombre">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="apellido"
                           placeholder="Apellido">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="telefono"
                           placeholder="Teléfono">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="direccion"
                           placeholder="Dirección">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="fechanac"
                           placeholder="Fecha de Nac.">
                </div>
                <div class="col-sm-6 mb-3">
                    <input type="text" class="form-control form-control-user" id="especialidad"
                           placeholder="Especialidad">
                </div>
                <!-- horarios y usuarios pendientes -->
            </div>
            
            <a href="#" class="btn btn-primary btn-user btn-block">
                Crear Nuevo Odontólogo
            </a>
            <hr>
            
        </form>
        <!-- End Content Row -->

        <%@include file="components/bodybuttom.jsp"%>   
    </body>
</html>
