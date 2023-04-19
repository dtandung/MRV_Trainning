package com.pilot.service;

import com.pilot.entity.UserInfoEntity;
import com.pilot.model.ResponseDataModel;

public interface UserInfoService {

	UserInfoEntity login(String username, String password);
	ResponseDataModel errorLogin(String username, String password);
}