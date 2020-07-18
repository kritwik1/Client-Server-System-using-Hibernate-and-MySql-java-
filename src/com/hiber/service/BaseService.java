package com.hiber.service;

import com.hiber.pojo.User;

public interface BaseService {
 public boolean login(String username, String password);

 public String registration(User user);
}