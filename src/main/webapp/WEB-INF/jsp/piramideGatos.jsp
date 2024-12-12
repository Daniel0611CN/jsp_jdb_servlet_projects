<%@ page import="java.sql.*" %>
<%@ page import="org.iesvdm.jsp_jdbc_servlet_projects.servlet.FormularioPiramide" %><%--
  Created by IntelliJ IDEA.
  User: danic
  Date: 12/12/2024
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Piramide Gatos</title>
</head>
<body>

<%
    if (!request.getParameter("altura").isEmpty()) {
    int altura = Integer.parseInt(request.getParameter("altura"));
    int contador = 0;
    for (int i = 0; i < altura; i++) {
        String aux = "";
        for (int j = 0; j < altura-contador; j++) {
            aux += "· · · "; // Esto habría que ponerlo de otra forma pero es que con los espacios no sirve;
        }
        out.print(aux);
        contador++;
        for (int j = 0; j < contador; j++) {
%>

    <img src="img/gatoIMG.png" width="50" height="50">

    <% } %>
    <p></p>
<%
    }} else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
