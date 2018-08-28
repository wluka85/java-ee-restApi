package com.codecool.restapi.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/addusers"})
public class AddClientServlet extends HttpServlet {

    DAO = new DAO
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("WEB-INF/addUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String brand = request.getParameter("Brand");
        String model = request.getParameter("Model");
        String description = request.getParameter("Description");
        String annotation = request.getParameter("Annotation");
        String price = request.getParameter("Price");

        clinet new Client("damian, @gm").com
        dao.addUser(client )

        request.getRequestDispatcher("WEB-INF/addUser.jsp").forward(request,response);

    }
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
