<%
    HttpSession misesion = request.getSession();
    String usuario = (String) request.getSession().getAttribute("usuario");

    if(usuario == null){
        response.sendRedirect("login.jsp");
    }

%>
