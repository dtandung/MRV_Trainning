package com.pilot.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pilot.common.constant.Constants;
import com.pilot.dao.UserInfoDao;
import com.pilot.entity.UserInfoEntity;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {


  private final Logger LOGGER = LoggerFactory.getLogger(getClass());

  @Autowired
  UserInfoDao userDao;

  @Override
  public UserInfoEntity login(String username, String password) {
    // TODO Auto-generated method stub
    return userDao.findByUsernameAndPassword(username, password);
  }

  @Override
  public ResponseDataModel errorLogin(String username, String password) {
    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    try {
      if (userDao.findByUsernameAndPassword(username, password) == null) {
        responseMsg = "Login fail";
        responseCode = Constants.RESULT_CD_FAIL;
      } else {
        userDao.findByUsernameAndPassword(username, password);
        responseMsg = "Login successfully";
        responseCode = Constants.RESULT_CD_SUCCESS;
      }
    } catch (Exception e) {
      responseMsg = e.getMessage();
      LOGGER.error("Error when login: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg);
  }
}
