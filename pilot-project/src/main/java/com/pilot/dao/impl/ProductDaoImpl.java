package com.pilot.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.pilot.dao.ProductDao;
import com.pilot.dao.repository.ProductRepository;
import com.pilot.entity.BrandEntity;
import com.pilot.entity.ProductEntity;

@Transactional
@Repository
public class ProductDaoImpl implements ProductDao {

  @Autowired
  private ProductRepository repo;

  @Override
  public ProductEntity findByProductId(Long productId) {
    // TODO Auto-generated method stub
    return repo.findById(productId).get();
  }

  @Override
  public ProductEntity findByProductName(String productName) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public ProductEntity findByProductNameAndProductIdNot(String productName, Long productId) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Specification<ProductEntity> getSearchCriteria(Map<String, Object> searchConditionsMap) {
    return new Specification<ProductEntity>() {
      private static final long serialVersionUID = 1L;

      @Override
      public Predicate toPredicate(Root<ProductEntity> productRoot, CriteriaQuery<?> query,
          CriteriaBuilder criteriaBuilder) {

        List<Predicate> predicates = new ArrayList<>();
        if (searchConditionsMap != null) {

          String keyword = (String) searchConditionsMap.get("keyword");

          if (StringUtils.isNotEmpty(keyword)) {
            predicates.add(criteriaBuilder.or(
                criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                criteriaBuilder.like(productRoot.get("brand"), "%" + keyword + "%")));
          }
        }
        return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
      }
    };
  }

  @Override
  public List<ProductEntity> getProductNameByBrandId(Long brandId) {
    // TODO Auto-generated method stub
    return repo.findProductByBrandId(brandId);
  }
}
