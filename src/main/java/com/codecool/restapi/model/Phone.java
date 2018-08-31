package com.codecool.restapi.model;


import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "phones")
public class Phone {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String brand;
    private String model;

    @ManyToOne(fetch=FetchType.EAGER)
    private Client client;

    @OneToMany(fetch=FetchType.EAGER, mappedBy = "phone", cascade = {CascadeType.ALL})
    private List<ServiceInfo> serviceHistory = new ArrayList<>();

    public Phone(){
    }

    public Phone(String brand, String model) {
        this.brand = brand;
        this.model = model;
    }

    public Phone(String brand, String model, Client client) {
        this(brand, model);
        this.client = client;
    }

    public Phone(String brand, String model, Client client, List<ServiceInfo> serviceHistory) {
        this(brand, model, client);
        this.serviceHistory = serviceHistory;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }


    public List<ServiceInfo> getServiceHistory() {
        return serviceHistory;
    }

    public void setServiceHistory(List<ServiceInfo> serviceInfos) {
        this.serviceHistory = serviceInfos;
    }

    public void addServiceInfo(ServiceInfo serviceInfo) {
        serviceHistory.add(serviceInfo);
    }

    public void removeServiceInfo(ServiceInfo serviceInfo) {
        serviceHistory.remove(serviceInfo);
    }
}
