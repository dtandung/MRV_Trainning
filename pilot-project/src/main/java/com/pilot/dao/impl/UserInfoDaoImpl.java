package com.pilot.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.pilot.dao.UserInfoDao;
import com.pilot.dao.repository.UserInfoRepository;
import com.pilot.entity.UserInfoEntity;


@Transactional
@Repository
public class UserInfoDaoImpl implements UserInfoDao{

  @Autowired
  UserInfoRepository userRepo;
  
  @Override
  public UserInfoEntity findByUsernameAndPassword(String Username, String Password) {
    // TODO Auto-generated method stub
    return userRepo.findByUsernameAndPassword(Username, Password);
  }


}
