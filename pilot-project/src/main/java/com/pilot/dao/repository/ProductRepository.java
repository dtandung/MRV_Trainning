package com.pilot.dao.repository;


import com.pilot.entity.ProductEntity;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public interface ProductRepository
    extends JpaRepository<ProductEntity, Long>, JpaSpecificationExecutor<ProductEntity> {

    ProductEntity findByProductName(String productName);
    
    ProductEntity findByProductNameAndProductIdNot(String productName, Long productId);
    
//    @Query(value="SELECT * FROM PRODUCT WHERE PRICE >= :fromPrice and PRICE <= toPrice ", nativeQuery = true)
//    List<ProductEntity> findByPrice(@Param("fromPrice") String fromPrice, @Param("toPrice") String toPrice);
}
