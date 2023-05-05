package com.pilot.controller;



import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.pilot.entity.UserInfoEntity;
import com.pilot.service.UserInfoService;

@Controller
//@RequestMapping(value = "/login")
public class LoginController {

  @Autowired
  UserInfoService userInfoService;

//  @GetMapping
//  public String initPage() {
//    return "tiles.login";
//  }

  @GetMapping(value = "/login")
  public String login(@RequestParam(value = "error", required = false) String error,
      @RequestParam(value = "username",required = false) String userName,
      @RequestParam(value = "password",required = false) String passWord, HttpServletRequest request, Model model) {
    UserInfoEntity userInfo = userInfoService.login(userName, passWord);
    String redirectPage = StringUtils.EMPTY;
    if (userInfo == null) {
      if (error != null) {
        model.addAttribute("error", true);
      }
      redirectPage = "tiles.login";
    }
    return redirectPage;
  }
}
