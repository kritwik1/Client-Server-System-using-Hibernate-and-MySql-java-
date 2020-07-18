package com.hiber.service;

import com.hiber.dao.BaseDao;
import com.hiber.dao.BaseDaoImpl;
import com.hiber.pojo.User;

public class BaseServiceImpl implements BaseService {

 private BaseDao loginDao = new BaseDaoImpl();

 @Override
 public boolean login(String username, String password) {
  return loginDao.login(username, password);
 }

 @Override
 public String registration(User user) {
  return loginDao.register(user);
 }

}
