package com.codecool.restapi.servlets;

import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class OneUserServlet extends HttpServlet {

    private ServiceDAOInterface dao = new ServiceDAOImpl();
    private Client client;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long id = getClientId(request);
        client = dao.getClient(id);
        List<Phone> phones = client.getPhones();

        //Start Temporary solution

        Set<Phone> newPhoneList = new LinkedHashSet<>();
        for (Phone phone: phones) {
            newPhoneList.add(phone);
        }
        //EndTemporary solution

        request.setAttribute("client", client);
        request.setAttribute("phones", newPhoneList);
        request.getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Map<String, String> serviceMessages = new HashMap<>();
        Map<String, String> phoneMessages = new HashMap<>();


//      ----------Phone info values parsing-------------
        String brand = request.getParameter("brand");
        if (brand == null || brand.trim().isEmpty()) {
            phoneMessages.put("brand", "Empty");
        }
        String model = request.getParameter("model");
        if (model == null || model.trim().isEmpty()) {
            phoneMessages.put("brand", "Empty");
        }
        Long clientId = Long.parseLong(request.getParameter("clientId"));
        Client client = dao.getClient(clientId);


        if (phoneMessages.isEmpty()) {
            Phone newPhone = new Phone(brand, model, client);
            client.addPhone(newPhone);
            dao.add(newPhone);
            dao.update(client);
        }

        long id = getClientId(request);
        client = dao.getClient(id);
        List<Phone> phones = client.getPhones();

        //Start Temporary solution

        Set<Phone> newPhoneList = new LinkedHashSet<>();
        for (Phone phone: phones) {
            newPhoneList.add(phone);
        }
        //EndTemporary solution

        request.setAttribute("client", client);
        request.setAttribute("phones", newPhoneList);
        request.getRequestDispatcher("/WEB-INF/user.jsp").forward(request, response);
    }

    private long getClientId (HttpServletRequest request){
        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("/");
        return Long.parseLong(pathParts[1]);
    }
}
