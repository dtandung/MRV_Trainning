package com.pilot.service;

import com.pilot.entity.UserInfoEntity;


public interface UserInfoService {

	UserInfoEntity login(String username, String password);

}