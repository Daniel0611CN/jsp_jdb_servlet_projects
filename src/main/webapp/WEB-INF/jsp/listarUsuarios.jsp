<%@page import="java.sql.*"%>
<%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 11/12/2024
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listar Usuarios</title>
</head>
<body>
<%
    //CARGA DEL DRIVER Y PREPARACIÓN DE LA CONEXIÓN CON LA BBDD
    //						v---------UTILIZAMOS LA VERSIÓN MODERNA DE LLAMADA AL DRIVER, no deprecado
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root", "root");

    //UTILIZAR STATEMENT SÓLO EN QUERIES NO PARAMETRIZADAS.
    Statement s = conexion.createStatement();
    ResultSet listado = s.executeQuery ("SELECT * FROM usuarios");

    while (listado.next()) {
        out.println(listado.getString("idUsuario") + " " + listado.getString ("nombreUsuario") + "<br>");
    }
    listado.close();
    s.close();
    conexion.close();
%>
</body>
</html>
