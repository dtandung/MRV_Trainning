package com.pilot.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pilot.dao.UserInfoDao;
import com.pilot.entity.UserInfoEntity;
import com.pilot.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {




  @Autowired
  UserInfoDao userDao;

  @Override
  public UserInfoEntity login(String username, String password) {
    // TODO Auto-generated method stub
    return userDao.findByUsernameAndPassword(username, password);
  }

  
}
