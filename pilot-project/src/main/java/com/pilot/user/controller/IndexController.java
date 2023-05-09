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
import com.pilot.service.BrandService;
import com.pilot.service.ProductService;

/**
 * This class is used to declare controller for Index page
 * 
 */
@Controller
@RequestMapping(value = {"/home"})
public class IndexController {

  @Autowired
  BrandService brandService;

  @Autowired
  ProductService productService;

  @GetMapping
  public String initPage() {
    return "tiles.phone";
  }

  @PostMapping("/api/getallbrand")
  @ResponseBody
  public ResponseDataModel getAllBrand(@RequestBody Map<String, Object> searchDataMap) {
    return brandService.getAllBrand(searchDataMap);
  }


  @PostMapping("/api/getallproduct")
  @ResponseBody
  public ResponseDataModel getAllProduct(@RequestBody Map<String, Object> searchDataMap) {
    return productService.getAllProduct(searchDataMap);
  }

}
