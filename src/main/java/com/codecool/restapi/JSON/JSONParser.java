package com.codecool.restapi.JSON;

import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.json.JsonObject;
import java.util.List;

public class JSONParser {

    @SuppressWarnings("unchecked")
    public JSONObject generateJSONByClientList(List<Client> data) {

        JSONObject jsonClients = new JSONObject();

        for(Client client : data){
            JSONArray jsonClient = new JSONArray();

            jsonClient.add(client.getEmail());
            for(Phone phone : client.getPhones()){
                jsonClient.add(phone.getBrand());
                jsonClient.add(phone.getModel());
                for(ServiceInfo serviceInfo : phone.getServiceHistory()){
                    jsonClient.add(serviceInfo.getDescription());
                    jsonClient.add(serviceInfo.getPrice());
                    jsonClient.add(serviceInfo.getAnnotation());

                }
            }
            jsonClients.put(client.getName(), jsonClient);
        }
        return jsonClients;
    }

    @SuppressWarnings("unchecked")
    public JSONObject generateJSONByPhoneList(List<Phone> data ){
        JSONObject jsonClientPhones = new JSONObject();

        for(Phone phone : data){
            JSONArray jsonPhone = new JSONArray();

            jsonPhone.add(phone.getBrand());
            jsonPhone.add(phone.getModel());
            for(ServiceInfo serviceInfo : phone.getServiceHistory()){
                jsonPhone.add(serviceInfo.getDescription());
                jsonPhone.add(serviceInfo.getPrice());
                jsonPhone.add(serviceInfo.getAnnotation());

            }
            jsonClientPhones.put(phone.getClient().getName(), jsonPhone);
        }
        return jsonClientPhones;
    }

    @SuppressWarnings("unchecked")
    public JSONObject generateJSONByServiceInfoList(List<ServiceInfo> data) {

        JSONObject jsonPhoneServices = new JSONObject();
        JSONArray jsonService = new JSONArray();

        Phone phone = data.get(0).getPhone();

        for(ServiceInfo serviceInfo : data){
            jsonService.add(serviceInfo.getDescription());
            jsonService.add(serviceInfo.getPrice());
            jsonService.add(serviceInfo.getAnnotation());

        }
        jsonPhoneServices.put(phone.getBrand() + " " + phone.getModel(), jsonService);

        return jsonPhoneServices;
    }
}
