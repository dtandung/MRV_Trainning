package com.pilot.user.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.ProductService;


@Controller
@RequestMapping(value = { "/productofbrand" })
public class ProductOfBrandController {
  
  @Autowired
  private ProductService productService;
  
  @GetMapping
  public String initPage() {
      return "tiles.productofbrand";
  }
  
  @PostMapping( "/findById" )
  @ResponseBody
  public ResponseDataModel findById (@RequestBody Map<String, Object> searchDataMap) {
    return productService.findByBrandForApi(searchDataMap);
  }

}
