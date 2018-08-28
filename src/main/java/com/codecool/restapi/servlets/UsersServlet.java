package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Client;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UsersServlet extends HttpServlet {

    ServiceDAOInterface dao;

    private List<Client> clients = dao.getClientList();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/users.jsp").forward(request, response);
    }

    public void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long userId = Long.parseLong(request.getParameter("ID"));
        Client client = dao.getClient(userId);
        dao.delete(client);

        request.getRequestDispatcher("/users.jsp").forward(request, response);

    }

}
