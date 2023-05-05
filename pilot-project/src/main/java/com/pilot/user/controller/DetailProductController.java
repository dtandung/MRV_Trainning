package com.pilot.user.controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.pilot.entity.ProductEntity;
import com.pilot.service.ProductService;


@Controller
//@RequestMapping
public class DetailProductController {

  @Autowired
  private ProductService productService;

  @GetMapping(value = {"/detailproduct"})
  public String initPage(@RequestParam(value = "id", required = false) Long productId,
      HttpServletRequest request, Model model) {
    ProductEntity pro = productService.findProductById(productId);
    if (pro != null && productId != null) {
      model.addAttribute("productDetail", pro);
    }
    return "tiles.detailproduct";
  }

}
