<%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 15/12/2024
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario Editar Usuario</title>
</head>
<body>
    <form method="post" action="EditarUsuariosServlet">
        <input type="hidden" name="idUsuario" value="<%= request.getParameter("idUsuario") %>">
        Nombre <input type="text" name="nombreUsuarioEditar" value="<%= request.getParameter("nombreUsuarioEditar") %>">
        <br><br>
        Contraseña <input type="password" name="pswdUsuarioEditar" value="<%= request.getParameter("pswdUsuarioEditar") %>">
        <br><br>
        <input type="submit" value="Editar Usuario">
    </form>
</body>
</html>
