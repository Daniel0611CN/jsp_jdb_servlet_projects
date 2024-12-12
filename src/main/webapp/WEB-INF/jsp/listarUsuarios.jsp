<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 12/12/2024
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Listado Usuarios</title>
  </head>
  <body>
    <h1>Listado de Usuarios</h1>
    <%
      //CARGA DEL DRIVER Y PREPARACIÓN DE LA CONEXIÓN CON LA BBDD
      //						v---------UTILIZAMOS LA VERSIÓN MODERNA DE LLAMADA AL DRIVER, no deprecado
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root", "root");

      //UTILIZAR STATEMENT SÓLO EN QUERIES NO PARAMETRIZADAS.
      Statement s = conexion.createStatement();
      ResultSet listado = s.executeQuery ("SELECT * FROM usuarios");
    %>
    <table border="1">
      <th>Nombre</th><th>Contraseña</th>
    <%
      while (listado.next()) {
    %>
      <tr>
        <td><%= listado.getString("nombreUsuario") %></td>
        <td><%= listado.getString("pswdUsuario") %></td>
      </tr>
    <%
      }
      listado.close();
      s.close();
      conexion.close();
    %>
    </table>
  </body>
</html>
