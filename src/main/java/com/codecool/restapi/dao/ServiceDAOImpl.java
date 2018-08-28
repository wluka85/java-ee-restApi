package com.codecool.restapi.dao;

import com.codecool.restapi.model.Client;
import com.codecool.restapi.model.Phone;
import com.codecool.restapi.model.ServiceInfo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.Date;
import java.util.List;

public class ServiceDAOImpl implements ServiceDAOInterface {

    private EntityManagerFactory emf;
    private EntityManager em;
    private EntityTransaction transaction;

    public ServiceDAOImpl() {
        emf = Persistence.createEntityManagerFactory("restapiPU");
        em = emf.createEntityManager();
        transaction = em.getTransaction();
    }

    @Override
    public List<Client> getClientList() {
        List<Client> clientList = em.createQuery(
                "SELECT c FROM Client c")
                .getResultList();

        return clientList;
    }

    @Override
    public List<Phone> getPhoneList() {
        List<Phone> phoneList = em.createQuery(
                "SELECT p FROM Phone p")
                .getResultList();
        return phoneList;
    }

    @Override
    public List<ServiceInfo> getServiceInfoList() {
        List<ServiceInfo> serviceInfoList = em.createQuery(
                "SELECT s FROM ServiceInfo s")
                .getResultList();
        return serviceInfoList;
    }

    @Override
    public Client getClient(long id) {

        return em.find(Client.class, id);
    }

    @Override
    public Phone getPhone(long id) {

        return em.find(Phone.class, id);
    }

    @Override
    public ServiceInfo getServiceInfo(long id) {

        return em.find(ServiceInfo.class, id);
    }

    @Override
    public void add(Client client) {
        transaction.begin();
        em.persist(client);
        transaction.commit();
    }

    @Override
    public void add(Phone phone) {
        transaction.begin();
        em.persist(phone);
        transaction.commit();
    }

    @Override
    public void add(ServiceInfo serviceInfo) {
        transaction.begin();
        em.persist(serviceInfo);
        transaction.commit();
    }

    @Override
    public void update(Client client) {
        transaction.begin();
        em.persist(client);
        transaction.commit();
    }

    @Override
    public void update(Phone phone) {
        transaction.begin();
        em.persist(phone);
        transaction.commit();
    }

    @Override
    public void update(ServiceInfo serviceInfo) {
        transaction.begin();
        em.persist(serviceInfo);
        transaction.commit();
    }

    @Override
    public void delete(Client client) {
        transaction.begin();
        em.remove(client);
        transaction.commit();
    }

    @Override
    public void delete(Phone phone) {
        transaction.begin();
        em.remove(phone);
        transaction.commit();
    }

    @Override
    public void delete(ServiceInfo serviceInfo) {
        transaction.begin();
        em.remove(serviceInfo);
        transaction.commit();
    }

    public void close() {
        em.close();
        emf.close();
    }
}
