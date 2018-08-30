package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class ServiceInfoServlet extends HttpServlet {

    private ServiceDAOInterface serviceDAOInterface;

    public ServiceInfoServlet() {
        serviceDAOInterface = new ServiceDAOImpl();
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        long phoneId = getServiceId(request);

        Phone phone = serviceDAOInterface.getPhone(phoneId);
        List<ServiceInfo> serviceInfoList = phone.getServiceHistory();

        request.setAttribute("services", serviceInfoList);
        request.setAttribute("phoneid", phoneId);

        request.getRequestDispatcher("/WEB-INF/service-info.jsp").forward(request, response);
    }
    private long getServiceId(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("/");
        return Long.parseLong(pathParts[1]);
    }
}
