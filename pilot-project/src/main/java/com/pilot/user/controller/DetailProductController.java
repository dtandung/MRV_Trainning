package com.pilot.user.controller;



import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

  @GetMapping(value = {"/detailproduct"})
  public String initPage(@RequestParam(value = "id", required = false) Long productId,
      HttpServletRequest request, Model model) {
    ProductEntity pro = productService.findProductById(productId);
    if (pro != null && productId != null) {
      model.addAttribute("productDetail", pro);
      model.addAttribute("specificPageTitle", pro.getProductName());
    }
    return "tiles.detailproduct";
  }

//  @GetMapping("/detailproducttitle")
//  @ResponseBody
//  public ResponseDataModel findById(@RequestParam("id") Long productId) {
//    return productService.findByProductIdForApi(productId);
//  }

}
