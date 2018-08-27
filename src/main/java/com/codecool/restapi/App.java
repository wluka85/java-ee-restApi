package com.codecool.restapi;

import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.Service_info;
import com.codecool.restapi.model.Users;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.Date;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello!!");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("restapiPU");
        EntityManager em = emf.createEntityManager();
        populateDb(em);

    }

    public static void populateDb(EntityManager em) {

        Users users = new Users("Damian", "loveIphones@iphones.com");
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(users);
        transaction.commit();
        System.out.println("Created Users.");


        Phone phone = new Phone("iphone", "s6");
        transaction.begin();
        em.persist(users);
        transaction.commit();
        System.out.println("Created phones.");


        Service_info service_info = new Service_info("screen smashed", new Date(2,10,2018), "fixed", 500);
        transaction.begin();
        em.persist(service_info);
        transaction.commit();
        System.out.println("Created service_info");

    }
}
