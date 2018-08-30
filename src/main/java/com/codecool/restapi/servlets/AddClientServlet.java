package com.codecool.restapi.servlets;

import com.codecool.restapi.JSON.JSONParser;
import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;
import org.hibernate.cfg.Configuration;
import org.json.simple.JSONObject;

import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(urlPatterns = {"/addusers"})
public class AddClientServlet extends HttpServlet {

    private ServiceDAOImpl serviceDAO = new ServiceDAOImpl();

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

        Long parsePrice = Long.parseLong(price);

        Client client = new Client(name, email);
        Phone phone = new Phone(brand, model, client);

        client.addPhone(phone);

        ServiceInfo serviceInfo = new ServiceInfo(description, getDate(), annotation, parsePrice, phone);
        phone.addServiceInfo(serviceInfo);

        serviceDAO.add(client);
        serviceDAO.add(phone);
        serviceDAO.add(serviceInfo);

        JSONParser jsonParser = new JSONParser();
        JSONObject tempt =  jsonParser.generateJSONByList(client.getPhones());


        request.getRequestDispatcher("WEB-INF/addUser.jsp").forward(request,response);
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
