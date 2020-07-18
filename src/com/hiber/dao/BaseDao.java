package com.hiber.dao;
import com.hiber.pojo.User;

public interface BaseDao {
 public boolean login(String username, String password);

 public String register(User user);
}