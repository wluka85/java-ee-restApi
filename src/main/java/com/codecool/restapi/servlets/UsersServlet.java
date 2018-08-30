package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Client;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UsersServlet extends HttpServlet {

    private ServiceDAOInterface dao = new ServiceDAOImpl();

    private List<Client> clients;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        clients = dao.getClientList();

        request.setAttribute("clients", clients);
        request.getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        Long userId = Long.parseLong(request.getParameter("ID"));
        Client client = dao.getClient(userId);
        dao.delete(client);

        clients = dao.getClientList();
        request.setAttribute("clients", clients);

        request.getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);

    }

}
