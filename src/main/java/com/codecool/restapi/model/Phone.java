package com.codecool.restapi.model;


import javax.persistence.*;

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
}
