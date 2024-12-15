<%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 13/12/2024
  Time: 0:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario Graba Socio</title>
</head>
<body>
    <form method="post" action="GrabarUsuariosServlet">
        <input type="text" name="nombreUsuarioCreado" placeholder="Introduce un nombre">
        <br><br>
        <input type="password" name="pswdUsuarioCreado" placeholder="Introduce una contraseña">
        <br><br>
        <input type="submit" value="Crear Usuario">
    </form>
</body>
</html>
