package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ServiceInfoServlet extends HttpServlet {

    private ServiceDAOInterface serviceDAOInterface;

    public ServiceInfoServlet() {
        serviceDAOInterface = new ServiceDAOImpl();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("sdfsfdf");

        request.getRequestDispatcher("/WEB-INF/service-info.jsp").forward(request, response);
    }
}
