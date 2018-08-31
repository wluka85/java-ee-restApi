package com.codecool.restapi.servlets;

import com.codecool.restapi.JSON.JSONParser;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserPostmanServlet extends HttpServlet {
    ServiceDAOInterface serviceDAOInterface;
    JSONParser jsonParser;


    public UserPostmanServlet() {
        this.serviceDAOInterface = new ServiceDAOImpl();
        this.jsonParser = new JSONParser();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURI();

        System.out.println(url);


        String jsonStr;
        if(url.equals("/user")){
            List<Client> clientList = serviceDAOInterface.getClientList();
            jsonStr = jsonParser.generateJSONByClientList(clientList).toJSONString();
        }
        else {
            long id = getClientID(request);
            List<Client> clientList = new ArrayList<>();
            clientList.add(serviceDAOInterface.getClient(id));
            jsonStr = jsonParser.generateJSONByClientList(clientList).toJSONString();
        }
        response.getWriter().write(jsonStr);
    }

    private long getClientID(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();

        String[] pathParts = pathInfo.split("/");
        return Long.parseLong(pathParts[1]);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");

        Client client = serviceDAOInterface.getClient(getClientID(request));
        client.setName(name);
        client.setEmail(email);
        serviceDAOInterface.update(client);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       long clientID = getClientID(request);
        Client client = serviceDAOInterface.getClient(clientID);
        serviceDAOInterface.delete(client);
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

        Long parsePrice = Long.parseLong(price);

        Client client = new Client(name, email);
        Phone phone = new Phone(brand, model, client);

        client.addPhone(phone);

        ServiceInfo serviceInfo = new ServiceInfo(description, getDate(), annotation, parsePrice, phone);
        phone.addServiceInfo(serviceInfo);

        serviceDAOInterface.add(client);
        serviceDAOInterface.add(phone);
        serviceDAOInterface.add(serviceInfo);

    }

    private Date getDate(){

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date date = sdf.parse(sdf.format(new Date()));
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
