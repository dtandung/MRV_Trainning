package com.pilot.controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pilot.dao.ProductDao;

/**
 * This class is used to declare controller for Index page
 * 
 */
@Controller
@RequestMapping(value = { "/product" })
public class ProductController {
  @Autowired
  private ProductDao prd;
  
	@GetMapping
	public String initPage() {
		return "tiles.product";
	}
	
	@GetMapping("/test")
	public String show() {
	  long c= 5;
	  System.out.println(prd.getProductNameByBrandId(c));
//	  Map<String, Object> map = new HashMap<String, Object>();
//	    map.put("keyword", "chi");
//	   System.out.println(prd.getSearchCriteria(map));
	  return "tiles.product";
	}
}