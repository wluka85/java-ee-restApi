package com.codecool.restapi.dao;

import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import java.util.List;

public interface ServiceDAOInterface {

    List<Client> getClientList();
    List<Phone> getPhoneList();
    List<ServiceInfo> getServiceInfoList();

    Client getClient(long id);
    Phone getPhone(long id);
    ServiceInfo getServiceInfo(long id);

    void add(Client client);
    void add(Phone phone);
    void add(ServiceInfo serviceInfo);

    void update(Client client);
    void update(Phone phone);
    void update(ServiceInfo serviceInfo);

    void delete(Client client);
    void delete(Phone phone);
    void delete(ServiceInfo serviceInfo);
}
