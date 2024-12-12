<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form method="post" action="ValidarDatosUsuarios">
    <input type="text" name="nombre" placeholder="Introduzca el nombre">
    <br><br>
    <input type="password" name="pswd" placeholder="Introduzca la contraseña">
    <br><br>
    <input type="submit" value="Aceptar">
</form>
<br><br>
<button><a href="ListarDatosUsuarios">Listar Usuarios</a></button>
</body>
</html>