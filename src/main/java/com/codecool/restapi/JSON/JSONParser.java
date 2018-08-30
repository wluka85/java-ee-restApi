package com.codecool.restapi.JSON;

import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.json.JsonObject;
import java.util.List;

public class JSONParser {

    private JSONObject jsonObject = new JSONObject();

    public JSONObject generateJSONByList(List<Phone> data){

        for(Phone phone : data){
            JSONArray jsonArray = new JSONArray();

            jsonArray.add(phone.getBrand());
            jsonArray.add(phone.getModel());
            for(ServiceInfo serviceInfo : phone.getServiceHistory()){
                jsonArray.add(serviceInfo.getDescription());
                jsonArray.add(serviceInfo.getPrice());
                jsonArray.add(serviceInfo.getAnnotation());
                jsonArray.add(serviceInfo.getDate());


            }
            this.jsonObject.put(phone.getClient().getName(), jsonArray);
        }
        System.out.println(jsonObject);
        return jsonObject;
    }
}
