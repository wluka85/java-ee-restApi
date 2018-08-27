package com.codecool.restapi.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "service_info")
public class Service_info {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String description;
    private Date date;
    private String annotation;
    private long price;
    private long phone_id;

    public Service_info(){

    }

    public Service_info(String description, Date date, String annotation, long price) {
        this.description = description;
        this.date = date;
        this.annotation = annotation;
        this.price = price;
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
}
