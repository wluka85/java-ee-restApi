package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class OneUserServlet extends HttpServlet {

    ServiceDAOInterface dao = new ServiceDAOImpl();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("/");
        Long id = Long.parseLong(pathParts[1]);

        Client client = dao.getClient(id);

        List<Phone> phones = client.getPhones();

        request.setAttribute("client", client);
        request.setAttribute("phones", phones);
        request.getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}
