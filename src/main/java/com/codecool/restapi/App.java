package com.codecool.restapi;

import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello!!");
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("restapiPU");
        EntityManager em = emf.createEntityManager();
        populateDb(em);

        em.close();
        emf.close();
    }

    public static void populateDb(EntityManager em) {

        Client client1 = new Client("Damian", "loveIphones@iphones.com");

        Phone phone1 = new Phone("LG", "newmodel", client1);
        Phone phone2 = new Phone("iPhone", "s5", client1);
        List<Phone> phones1 = new ArrayList<>();
        phones1.add(phone1);
        phones1.add(phone2);

        client1.setPhones(phones1);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(phone1);
        em.persist(phone2);
        em.persist(client1);
        transaction.commit();
        System.out.println("Created Client.");


//        Phone phone = new Phone("iphone", "s6");
//        transaction.begin();
//        em.persist(client);
//        transaction.commit();
//        System.out.println("Created phones.");


        ServiceInfo service_info = new ServiceInfo("screen smashed", new Date(2,10,2018), "fixed", 500);
        transaction.begin();
        em.persist(service_info);
        transaction.commit();
        System.out.println("Created service_info");

    }
}
