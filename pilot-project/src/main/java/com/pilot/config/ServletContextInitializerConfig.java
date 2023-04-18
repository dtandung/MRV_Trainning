package com.pilot.config;



import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import com.pilot.common.constant.Constants;
import com.pilot.common.util.CommonUtil;

@Configuration
@ComponentScan(basePackages = "com.pilot")
public class ServletContextInitializerConfig implements ServletContextInitializer {

  @Override
  public void onStartup(ServletContext servletContext) throws ServletException {
    System.setProperty(Constants.PROP_KEY_ROOT_FOLDER,
        CommonUtil.readProperties(Constants.PROP_KEY_ROOT_FOLDER, "config/application.properties"));

  }

}
