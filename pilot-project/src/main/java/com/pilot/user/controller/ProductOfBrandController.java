package com.pilot.user.controller;


import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.ProductService;


@Controller
@RequestMapping(value = {"/product-brand"})
public class ProductOfBrandController {

  @Autowired
  private ProductService productService;

  @GetMapping(value = {"/{brandName}"})
  public String initPage(@PathVariable(required = false) String brandName,
      HttpServletRequest request, Model model) {
    model.addAttribute("brand", brandName.replaceAll("-", " "));
    model.addAttribute("specificPageTitle", brandName.replaceAll("-", " "));
    return "tiles.productofbrand";
  }

  @PostMapping("/{brandName}")
  @ResponseBody
  public ResponseDataModel findByBrandName(@RequestBody Map<String, Object> searchConditionsMap) {
    return productService.getAllProduct(searchConditionsMap);
  }

}
