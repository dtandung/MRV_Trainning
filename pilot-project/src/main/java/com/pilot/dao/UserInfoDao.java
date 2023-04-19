package com.pilot.dao;

import com.pilot.entity.UserInfoEntity;

public interface UserInfoDao {
  UserInfoEntity findByUsernameAndPassword (String Username, String Password);
}
