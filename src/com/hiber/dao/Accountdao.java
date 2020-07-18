package com.hiber.dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
 
import com.hiber.pojo.Account;

public class Accountdao {
	  public void addAccount(int k,String accountt,String customer,String opendate,String addr,String accno) {
	        try {
	            // 1. configuring hibernate
	            Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
	 
	            // 2. create sessionfactory
	            SessionFactory sessionFactory = configuration.buildSessionFactory();
	 
	            // 3. Get Session object
	            Session session = sessionFactory.openSession();
	 
	            // 4. Starting Transaction
	            Transaction transaction = session.beginTransaction();
	            Account acc=new Account();
	            acc.setOrgid(k);
	            acc.setAccounttype(accountt);
	            acc.setCustomername(customer);
	            acc.setStartingdate(opendate);
	            acc.setAddress(addr);
	            acc.setAccountnumber(accno);
	            acc.setClosingdate("NIL");
	            session.save(acc);
	            transaction.commit();
	            System.out.println("\n\n Details Added \n");
	 
	        } catch (HibernateException e) {
	            System.out.println(e.getMessage());
	            System.out.println("error");
	        }

}
	 

}