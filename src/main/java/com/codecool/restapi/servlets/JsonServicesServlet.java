package com.codecool.restapi.servlets;

import com.codecool.restapi.JSON.JSONParser;
import com.codecool.restapi.dao.ServiceDAOImpl;
import com.codecool.restapi.dao.ServiceDAOInterface;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JsonServicesServlet extends HttpServlet {

    private ServiceDAOInterface serviceDAOInterface;
    private JSONParser jsonParser;

    public JsonServicesServlet() {
        serviceDAOInterface = new ServiceDAOImpl();
        jsonParser = new JSONParser();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long phoneId = getPhoneId(request);
        Phone phone = serviceDAOInterface.getPhone(phoneId);
        List<ServiceInfo> serviceInfoList = phone.getServiceHistory();
        String jsonStr = jsonParser.generateJSONByServiceInfoList(serviceInfoList).toJSONString();
        response.getWriter().write(jsonStr);


    }



    private long getPhoneId(HttpServletRequest request) {
        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("=");
        return Long.parseLong(pathParts[1]);
    }
}
