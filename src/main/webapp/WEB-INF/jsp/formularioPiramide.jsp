<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 12/12/2024
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario Piramide</title>
</head>
<body>
<form method="post" action="ConstruirPiramideGatos">
    <input type="hidden" name="idUsuario" value="<%= request.getParameter("idUsuario") %>">
    <input type="text" name="altura" placeholder="Introduce la altura de la pirámide">
    <br><br>
    <input type="submit" name="btn" value="Enviar Datos Piramide">
</form>
</body>
</html>
