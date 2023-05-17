package com.pilot.user.controller;



import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pilot.entity.ProductEntity;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.ProductService;


@Controller
// @RequestMapping
public class DetailProductController {

  @Autowired
  private ProductService productService;

  @GetMapping(value = {"/product-detail/{productName}"})
  public String initPage(@PathVariable(value = "productName", required = false) String productName,
      HttpServletRequest request, Model model) {
    String convertProductName = productName.replaceAll("%20", "-");
    ProductEntity pro = productService.findByProductName(convertProductName.replaceAll("-", " "));
    if (pro != null && productName != null) {
      model.addAttribute("productDetail", pro);
      model.addAttribute("specificPageTitle", pro.getProductName());
    }
    return "tiles.detailproduct";
  }
}
