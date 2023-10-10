<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/header.jsp"%>
    <body id="page-top">
        <%@include file="components/bodytop.jsp" %>

        <!-- Content Row -->

        <!-- DataTales Usuarios -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h5 class="m-0 font-weight-bold text-primary">Listado de Usuarios</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre de Usuario</th>
                                <th>Rol</th>
                                <th style="width: 210px">Opciones</th>

                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Nombre de Usuario</th>
                                <th>Rol</th>
                                <th style="width: 210px">Opciones</th>
                            </tr>
                        </tfoot>
                        <%
                            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                        %>
                        <tbody>
                            <% for (Usuario usu : listaUsuarios) { %>
                            <tr>
                                <td><%=usu.getId_usuario() %></td>
                                <td><%=usu.getNombre_usuario() %></td>
                                <td><%=usu.getRol() %></td>
                                <td style="display: flex; width:230px;">
                                    <form name="editar" action="SvEditUsuarios" method="GET">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-right: 5px;">
                                            <i class="fas fa-pencil-alt"></i> Editar
                                        </button>
                                        <input type="hidden" name="id" value="<%=usu.getId_usuario() %>">
                                    </form>
                                    <form name="eliminar" action="SvElimUsuarios" method="POST">
                                        <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: red; border: none;margin-left: 5px;">
                                            <i class="fas fa-trash-alt"></i> Eliminar
                                        </button>
                                        <input type="hidden" name="id" value="<%=usu.getId_usuario() %>">
                                    </form>
                                </td>
                            </tr>
                            <% }%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- End Content Row -->

        <%@include file="components/bodybuttom.jsp"%>   
    </body>
</html>
