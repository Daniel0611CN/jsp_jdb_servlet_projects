<%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 13/12/2024
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario Editar Usuario</title>
</head>
<body>
<h1><%=request.getParameter("idUsuario")%></h1>
    <form method="post" action="EditarUsuariosServlet">
        <input type="text" name="nombreUsuarioEditar" placeholder="Introduce un nuevo nombre">
        <br><br>
        <input type="password" name="pswdUsuarioEditar" placeholder="Introduce una nueva contraseña">
        <br><br>
        <input type="submit" value="Editar Usuario">
    </form>
</body>
</html>
