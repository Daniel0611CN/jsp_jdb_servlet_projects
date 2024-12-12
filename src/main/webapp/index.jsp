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
<form method="get" action="ValidarDatosUsuarios">
    <input type="text" id="nombre" placeholder="Introduzca el nombre">
    <br><br>
    <input type="password" id="pswd" placeholder="Introduzca la contraseña">
    <br><br>
    <input type="submit" value="Aceptar">
</form>
</body>
</html>