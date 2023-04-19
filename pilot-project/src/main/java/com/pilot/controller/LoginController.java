package com.pilot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pilot.entity.BrandEntity;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.UserInfoService;

@Controller
@RequestMapping(value="/login")
public class LoginController {

  @Autowired
  UserInfoService userInfoService;
  
  @GetMapping()
  public String initPage() {
      return "tiles.login";
  }
  
//  @PostMapping(value = {"?error"})
//  @ResponseBody
//  public ResponseDataModel errorLogin(@PathVariable("username") String userName,@PathVariable("password") String password) {
//      return userInfoService.errorLogin(userName, password);
//  }
}
