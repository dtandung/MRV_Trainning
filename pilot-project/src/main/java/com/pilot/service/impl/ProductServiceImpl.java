/**
 * 
 */
package com.pilot.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.pilot.common.constant.Constants;
import com.pilot.common.util.FileHelper;
import com.pilot.dao.BrandDao;
import com.pilot.dao.ProductDao;
import com.pilot.dao.repository.ProductRepository;
import com.pilot.entity.ProductEntity;
import com.pilot.model.PagerModel;
import com.pilot.model.ResponseDataModel;
import com.pilot.service.ProductService;

/**
 * @author Admin
 * @Since 14 thg 4, 2023
 * 
 */
@Service
@Transactional
public class ProductServiceImpl implements ProductService {

  private final Logger LOGGER = LoggerFactory.getLogger(getClass());

  @Value("${parent.folder.images.product}")
  private String productImageFolderPath;

  @Autowired
  ProductDao productDao;

  @Autowired
  BrandDao brandDao;

  @Autowired
  ProductRepository productRepo;

  @Override
  public ResponseDataModel add(ProductEntity productEntity) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    try {
      if (findByProductName(productEntity.getProductName()) != null) {
        responseMsg = "Product Name is duplicated";
        responseCode = Constants.RESULT_CD_DUPL;
      } else {
        MultipartFile[] imageFiles = productEntity.getImageFiles();
        if (imageFiles != null && imageFiles[0].getSize() > 0) {
          String imagePath = FileHelper.addNewFile(productImageFolderPath, imageFiles);
          productEntity.setImage(imagePath);
        }
        productRepo.saveAndFlush(productEntity);
        responseMsg = "Product is added successfully";
        responseCode = Constants.RESULT_CD_SUCCESS;
      }
    } catch (Exception e) {
      responseMsg = "Error when adding product";
      LOGGER.error("Error when adding product: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg);
  }

  @Override
  public ResponseDataModel update(ProductEntity productEntity) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    try {
      ProductEntity duplicatedProduct = productDao.findByProductNameAndProductIdNot(
          productEntity.getProductName(), productEntity.getProductId());

      // Check if product name existed
      if (duplicatedProduct != null) {
        responseMsg = "Product Name is duplicated";
        responseCode = Constants.RESULT_CD_DUPL;
      } else {
        MultipartFile[] imageFiles = productEntity.getImageFiles();
        if (imageFiles != null && imageFiles[0].getSize() > 0) {
          String imagePath =
              FileHelper.editFile(productImageFolderPath, imageFiles, productEntity.getImage());
          productEntity.setImage(imagePath);
        }
        productRepo.saveAndFlush(productEntity);
        responseMsg = "Product is updated successfully";
        responseCode = Constants.RESULT_CD_SUCCESS;
      }
    } catch (Exception e) {
      responseMsg = "Error when updating product";
      LOGGER.error("Errorr when updating product: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg);
  }

  @Override
  public ResponseDataModel findByProductIdForApi(Long productId) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    ProductEntity productEntity = null;
    try {
      productEntity = productDao.findByProductId(productId);
      if (productEntity != null) {
        responseCode = Constants.RESULT_CD_SUCCESS;
      }
    } catch (Exception e) {
      responseMsg = "Error when finding product by ID";
      LOGGER.error("Error when finding product by ID: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg, productEntity);
  }

  @Override
  public ResponseDataModel delete(Long productId) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    ProductEntity productEntity = productDao.findByProductId(productId);
    try {
      if (productEntity != null) {
        productRepo.deleteById(productId);
        productRepo.flush();

        // Remove image of brand from storage folder
        FileHelper.deleteFile(productEntity.getImage());
        responseMsg = "Product is deleted successfully";
        responseCode = Constants.RESULT_CD_SUCCESS;
      }
    } catch (Exception e) {
      responseMsg = "Error when deleting product";
      LOGGER.error("Error when delete product: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg);
  }

  @Override
  public ProductEntity findProductById(Long productId) {
    return productDao.findByProductId(productId);
  }

  @Override
  public ProductEntity findByProductName(String productName) {
    return productDao.findByProductName(productName);
  }

  @Override
  public ResponseDataModel searchWithPager(Map<String, Object> searchDataMap) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    Map<String, Object> responseMap = new HashMap<>();
    try {
      int pageNumber = (int) searchDataMap.get("currentPage");
      Sort sortInfo = Sort.by(Sort.Direction.DESC, "productId");
      Pageable pageable = PageRequest.of(pageNumber - 1, Constants.PAGE_SIZE, sortInfo);
      Page<ProductEntity> productEntitiesPage =
          productRepo.findAll(productDao.getSearchCriteria(searchDataMap), pageable);
      responseMap.put("productsList", productEntitiesPage.getContent());
      responseMap.put("paginationInfo",
          new PagerModel(pageNumber, productEntitiesPage.getTotalPages()));
      responseMap.put("brandList", brandDao.findAll());
      responseCode = Constants.RESULT_CD_SUCCESS;
    } catch (Exception e) {
      responseMsg = e.getMessage();
      LOGGER.error("Error when get all product: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg, responseMap);
  }

  @Override
  public ResponseDataModel getAllProduct(Map<String, Object> searchDataMap) {

    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    Map<String, Object> responseMap = new HashMap<>();
    try {
      int pageNumber = (int) searchDataMap.get("currentPage");
      Sort sortInfo = Sort.by(Sort.Direction.DESC, "productId");
      String sortBy = (String) searchDataMap.get("priceSort");
      if (sortBy.equals("2")) {
        sortInfo = Sort.by(Sort.Direction.ASC, "price");
      }
      if (sortBy.equals("3")) {
        sortInfo = Sort.by(Sort.Direction.DESC, "price");
      }
      Pageable pageable = PageRequest.of(pageNumber - 1, Constants.PAGE_SIZE_USER, sortInfo);
      Page<ProductEntity> productEntitiesPage =
          productRepo.findAll(productDao.getSearchCriteria(searchDataMap), pageable);
      List<ProductEntity> count = productRepo.findAll(productDao.getSearchCriteria(searchDataMap));
      responseMap.put("count", count);
      responseMap.put("productsListUser", productEntitiesPage.getContent());
      responseMap.put("paginationInfo",
          new PagerModel(pageNumber, productEntitiesPage.getTotalPages()));
      responseCode = Constants.RESULT_CD_SUCCESS;
    } catch (Exception e) {
      responseMsg = e.getMessage();
      LOGGER.error("Error when get all product: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg, responseMap);
  }
  //not using
  @Override
  public ResponseDataModel findByBrandForApi(String brandName) {
    int responseCode = Constants.RESULT_CD_FAIL;
    String responseMsg = StringUtils.EMPTY;
    List<ProductEntity> productEntity = null;
    Map<String, Object> responseMap = new HashMap<>();
    try {
      // String brandName =searchDataMap.get("brandName").toString();
      productEntity = productDao.findByBrandName(brandName);
      if (productEntity != null) {
        responseCode = Constants.RESULT_CD_SUCCESS;
        responseMap.put("productEntity", productEntity);
      }
    } catch (Exception e) {
      responseMsg = "Error when finding product by ID";
      LOGGER.error("Error when finding product by ID: {}", e);
    }
    return new ResponseDataModel(responseCode, responseMsg, responseMap);
  }

}
