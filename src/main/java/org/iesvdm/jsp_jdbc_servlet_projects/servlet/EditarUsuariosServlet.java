package org.iesvdm.jsp_jdbc_servlet_projects.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jdk.jshell.execution.Util;
import org.iesvdm.jsp_jdbc_servlet_projects.dao.UsuarioDAO;
import org.iesvdm.jsp_jdbc_servlet_projects.dao.UsuarioDAOImpl;
import org.iesvdm.jsp_jdbc_servlet_projects.model.Usuario;

import javax.swing.text.html.Option;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "EditarUsuariosServlet", value = "/EditarUsuariosServlet")
public class EditarUsuariosServlet extends HttpServlet {

    private UsuarioDAO usuarioDAO = new UsuarioDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/listarUsuariosAdmin.jsp");
        String codigoStr = request.getParameter("codigo");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;

        Optional<Usuario> optionalUser = UtilServlet.validaEditar(request);

        if (optionalUser.isPresent()) {

            Usuario usuario = optionalUser.get();
            this.usuarioDAO.update(usuario);

            List<Usuario> listado =this.usuarioDAO.getAll();
            request.setAttribute("listado", listado);

            dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/listarUsuariosAdmin.jsp");
        } else {
            request.setAttribute("error", "Error de validación!");
            dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/formularioEditarUsuario.jsp");
        }

        dispatcher.forward(request, response);
    }
}