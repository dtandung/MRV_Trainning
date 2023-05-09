package com.pilot.user.controller;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pilot.entity.BrandEntity;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.BrandService;
import com.pilot.service.ProductService;


@Controller
@RequestMapping(value = {"/productofbrand"})
public class ProductOfBrandController {

  @Autowired
  private BrandService brandService;
  
  @Autowired
  private ProductService productService;

  @GetMapping
  public String initPage(@RequestParam(value = "id", required = false) Long brandId,
      HttpServletRequest request, Model model) {
    BrandEntity bra = brandService.findByBrandId(brandId);
    if (bra != null && brandId != null) {
      model.addAttribute("brand", bra);
      model.addAttribute("specificPageTitle", bra.getBrandName());
    }
    return "tiles.productofbrand";
  }

  @PostMapping("/findByBrandId")
  @ResponseBody
  public ResponseDataModel findById(@RequestBody Map<String, Object> searchDataMap) {
    return productService.findByBrandForApi(searchDataMap);
  }

}
