package com.codecool.restapi.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "service_info")
public class ServiceInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String description;
    private Date date;
    private String annotation;
    private long price;

    @ManyToOne(fetch=FetchType.EAGER)
    private Phone phone;

    public ServiceInfo() {
    }

    public ServiceInfo(String description, Date date, String annotation, long price) {
        this.description = description;
        this.date = date;
        this.annotation = annotation;
        this.price = price;
    }

    public ServiceInfo(String description, Date date, String annotation, long price, Phone phone) {
        this(description, date, annotation, price);
        this.phone = phone;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAnnotation() {
        return annotation;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }
}
