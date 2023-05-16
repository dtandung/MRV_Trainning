package com.pilot.service;



import java.util.Map;
import com.pilot.entity.ProductEntity;
import com.pilot.model.ResponseDataModel;

/**
 * @author Admin
 * @Since 14 thg 4, 2023
 * 
 */
public interface ProductService {

  ResponseDataModel add (ProductEntity productEntity);
  
  ResponseDataModel update (ProductEntity productEntity);
  
  ResponseDataModel findByProductIdForApi (Long productId);
  
  ResponseDataModel findByBrandForApi (String brandName);
  
  ResponseDataModel delete (Long productId);
  
  ProductEntity findProductById (Long productId);
  
  ProductEntity findByProductName(String productName);

  ResponseDataModel searchWithPager(Map<String, Object> searchDataMap);
  
  ResponseDataModel getAllProduct(Map<String, Object> searchDataMap);

}
