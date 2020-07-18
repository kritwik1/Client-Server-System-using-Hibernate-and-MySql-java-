package com.hiber.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.hiber.pojo.Account;

public class Deleteaccountdao {
	public void DeleteAccount(int k,String customer,String addr) {
        try {
            // 1. configuring hibernate
            Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
 
            // 2. create sessionfactory
            SessionFactory sessionFactory = configuration.buildSessionFactory();
 
            // 3. Get Session object
            Session session = sessionFactory.openSession();
 
            // 4. Starting Transaction
            Transaction transaction = session.beginTransaction();
            //Account acc=new Account();
            Account acc = session.load(Account.class, k);
            //acc.setOrgid(k);
            //acc.setAccounttype(accountt);
            //acc.setCustomername(customer);
            
            //acc.setAddress(addr);
            
            
            session.delete(acc);
            transaction.commit();
            System.out.println("\n\n Account Deleted \n");
 
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            System.out.println("error");
        }
 }
}
