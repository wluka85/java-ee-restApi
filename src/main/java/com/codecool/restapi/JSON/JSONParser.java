package com.codecool.restapi.JSON;

import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.json.JsonObject;
import java.util.List;

public class JSONParser {



    public JSONObject generateJSONByPhoneList(List<Phone> data){
        JSONObject jsonObject = new JSONObject();

        for(Phone phone : data){
            JSONArray jsonArray = new JSONArray();

            jsonArray.add(phone.getBrand());
            jsonArray.add(phone.getModel());
            for(ServiceInfo serviceInfo : phone.getServiceHistory()){
                jsonArray.add(serviceInfo.getDescription());
                jsonArray.add(serviceInfo.getPrice());
                jsonArray.add(serviceInfo.getAnnotation());

            }
            jsonObject.put(phone.getClient().getName(), jsonArray);
        }
        return jsonObject;
    }

    public JSONObject generateJSONByServiceInfoList(List<ServiceInfo> data){

        JSONObject jsonObject = new JSONObject();
        JSONArray jsonArray = new JSONArray();

        Phone phone = data.get(0).getPhone();

        for(ServiceInfo serviceInfo : data){
            jsonArray.add(serviceInfo.getDescription());
            jsonArray.add(serviceInfo.getPrice());
            jsonArray.add(serviceInfo.getAnnotation());

        }
        jsonObject.put(phone.getBrand() + " " + phone.getModel(), jsonArray);

        return jsonObject;
    }

    public JSONObject generateJSONByClientList(List<Client> data){

        JSONObject jsonObject = new JSONObject();

        for(Client client : data){
            JSONArray jsonArray = new JSONArray();

            jsonArray.add(client.getEmail());
            for(Phone phone : client.getPhones()){
                jsonArray.add(phone.getBrand());
                jsonArray.add(phone.getModel());
                for(ServiceInfo serviceInfo : phone.getServiceHistory()){
                    jsonArray.add(serviceInfo.getDescription());
                    jsonArray.add(serviceInfo.getPrice());
                    jsonArray.add(serviceInfo.getAnnotation());

                }
            }
            jsonObject.put(client.getName(), jsonArray);
        }
        return jsonObject;
    }
}
