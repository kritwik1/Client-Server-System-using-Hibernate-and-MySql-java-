package com.hiber.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.hiber.pojo.Contact;

public class Addcontactdao {
	 public boolean  AddContact(int k,int z,int number,String customer) {
		/// try {
		 boolean success = true;
			 int p=k;
	            // 1. configuring hibernate
	            Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
	 
	            // 2. create sessionfactory
	            SessionFactory sessionFactory = configuration.buildSessionFactory();
	 
	            // 3. Get Session object
	            Session session = sessionFactory.openSession();
	 
	            // 4. Starting Transaction
	            Transaction transaction = session.beginTransaction();
	            List<Contact> list = new ArrayList <Contact>();
	            list = session.createQuery("FROM Contact  WHERE aid = :p").setParameter("p",k).getResultList(); 
    	           if(list.isEmpty()) {
    	        	   Contact co=new Contact();
          	         co.setAid(k);
          	         co.setOrgid(z);
          	         co.setContactnumber(number);
          	         co.setCustomername(customer);
          	         
          	         session.save(co);
          	         transaction.commit();
          	         System.out.println("\n\n Details Added \n");
          	       success = true;
    	           }
    	           else {
    	    
    	        	   System.out.println("Exist");
    	        	   transaction.commit();
    	        	   System.out.println(k);
    	        	   success = false;
                		  
                	  }
                 // }
		
            
     //catch (HibernateException e) {
         //System.out.println(e.getMessage());
         //System.out.println("error");
     //}
    	           return success;
	 }
	
}


