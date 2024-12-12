<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 12/12/2024
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validar Datos Formulario</title>
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

        boolean isInListado = false;

        while (listado.next()) {
            String nombreListado = listado.getString("nombreUsuario");
            String pswdListado = listado.getString("pswdUsuario");
            if (request.getParameter("nombre").equals(nombreListado)
             && request.getParameter("pswd").equals(pswdListado)) {
                isInListado = true;
    %>
        <h3>Usuario <%= request.getParameter("nombre") %> añadido correctamente</h3>

        <form method="post" action="FormularioPiramide">
            <input type="hidden" name="idUsuario" value="<%= listado.getString("idUsuario") %>">
            <input type="hidden" name="nombreUsuario" value="<%= nombreListado %>">
            <input type="hidden" name="pswdUsuario" value="<%= pswdListado %>">
            <input type="submit" value="Formulario Piramide">
        </form>
    <%
            }
        }
        if (!isInListado) {
            response.sendRedirect("index.jsp");
        }

        listado.close();
        s.close();
        conexion.close();
    %>
</body>
</html>
