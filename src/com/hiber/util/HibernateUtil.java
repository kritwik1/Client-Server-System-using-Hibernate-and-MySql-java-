package com.hiber.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
 private static Configuration configuration;
 private static SessionFactory sessionFactory;

 static {
  configuration = new Configuration()
    .configure("com/hiber/config/hibernate.cfg.xml");
  sessionFactory = configuration.buildSessionFactory();
 }

 public static Session getSession() {
  Session session = null;
  if (sessionFactory != null) {
   session = sessionFactory.openSession();
  }
  return session;
 }
}
