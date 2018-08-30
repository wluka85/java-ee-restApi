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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        request.setAttribute("phone", phone);

        request.getRequestDispatcher("/WEB-INF/service-info.jsp").forward(request, response);
    }
    private long getServiceId(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("/");
        return Long.parseLong(pathParts[1]);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> serviceMessages = new HashMap<>();
        // ---------Service info values parsing----------
         String description = request.getParameter("description");
         String annotation = request.getParameter("annotation");
         String stringPrice = request.getParameter("price");
         if (stringPrice == null || stringPrice.trim().isEmpty()) {
             serviceMessages.put("price", "Empty");
         }
         else if (!stringPrice.matches("\\d+")) {
             serviceMessages.put("price", "Non digit");
         }
         Long phoneId = Long.parseLong(request.getParameter("phoneId"));
         Phone phone = serviceDAOInterface.getPhone(phoneId);
         if (serviceMessages.isEmpty()) {
             Integer price = Integer.parseInt(stringPrice);
            ServiceInfo serviceInfo = new ServiceInfo(description, new Date(), annotation, price, phone);
            phone.addServiceInfo(serviceInfo);
            serviceDAOInterface.add(serviceInfo);
            serviceDAOInterface.update(phone);
         }
         doGet(request, response);
      //   request.getRequestDispatcher("/WEB-INF/service-info.jsp").forward(request, response);
    }
}
