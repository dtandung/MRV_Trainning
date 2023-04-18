package com.pilot.dao.impl;

import java.util.ArrayList;
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
import com.pilot.entity.ProductEntity;

@Transactional
@Repository
public class ProductDaoImpl implements ProductDao {

  @Autowired
  private ProductRepository repo;

  @Override
  public ProductEntity findByProductId(Long productId) {
    return repo.findById(productId).get();
  }

  @Override
  public ProductEntity findByProductName(String productName) {
    return repo.findByProductName(productName);
  }

  @Override
  public ProductEntity findByProductNameAndProductIdNot(String productName, Long productId) {
    return repo.findByProductNameAndProductIdNot(productName, productId);
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
          String fromPrice = (String) searchConditionsMap.get("fromPrice"); // = "" => double
          Double fromPriceParse = Double.parseDouble(fromPrice);
          String toPrice = (String) searchConditionsMap.get("toPrice");
          Double toPriceParse = Double.parseDouble(toPrice);

          if (StringUtils.isNotEmpty(keyword) && fromPriceParse == 0 && toPriceParse == 0) {
            predicates.add(criteriaBuilder.or(
                criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                    "%" + keyword + "%")));
          }
          if (StringUtils.isNotEmpty(keyword) && fromPriceParse > 0 && toPriceParse > 0) {
            predicates.add(criteriaBuilder.and(
                criteriaBuilder.or(
                    criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                    criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                        "%" + keyword + "%")),
                criteriaBuilder.between(productRoot.get("price"), fromPriceParse, toPriceParse)));
          }
          if (StringUtils.isEmpty(keyword) && fromPriceParse > 0 && toPriceParse > 0) {
            predicates.add(criteriaBuilder.and(
                criteriaBuilder.between(productRoot.get("price"), fromPriceParse, toPriceParse)));
          }
          if (StringUtils.isEmpty(keyword) && fromPriceParse > 0 && toPriceParse == 0) {
            predicates.add(
                criteriaBuilder.or(
                    criteriaBuilder.lt(productRoot.get("price"), fromPriceParse),
                    criteriaBuilder.equal(productRoot.get("price"), fromPriceParse)
                ));
          }
          if (StringUtils.isNotEmpty(keyword) && fromPriceParse > 0 && toPriceParse == 0) {
            predicates.add(criteriaBuilder.or(
                criteriaBuilder.and(criteriaBuilder.equal(productRoot.get("price"), fromPriceParse),
                    criteriaBuilder.or(
                        criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                        criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                            "%" + keyword + "%"))),
                criteriaBuilder.and(criteriaBuilder.lt(productRoot.get("price"), fromPriceParse),
                    criteriaBuilder.or(
                        criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                        criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                            "%" + keyword + "%")))));
          }
          if (StringUtils.isEmpty(keyword) && fromPriceParse == 0 && toPriceParse > 0) {
            predicates.add(
                criteriaBuilder.or(
                    criteriaBuilder.gt(productRoot.get("price"), toPriceParse),
                    criteriaBuilder.equal(productRoot.get("price"), toPriceParse)
                    ));
          }
          if (StringUtils.isNotEmpty(keyword) && fromPriceParse == 0 && toPriceParse > 0) {
            predicates.add(criteriaBuilder.or(
                criteriaBuilder.and(criteriaBuilder.equal(productRoot.get("price"), toPriceParse),
                    criteriaBuilder.or(
                        criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                        criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                            "%" + keyword + "%"))),
                criteriaBuilder.and(criteriaBuilder.gt(productRoot.get("price"), toPriceParse),
                    criteriaBuilder.or(
                        criteriaBuilder.like(productRoot.get("productName"), "%" + keyword + "%"),
                        criteriaBuilder.like(productRoot.get("brand").get("brandName"),
                            "%" + keyword + "%")))));
          }

        }
        return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
      }
    };
  }

}
