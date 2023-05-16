package com.pilot.dao.repository;


import com.pilot.entity.ProductEntity;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository
    extends JpaRepository<ProductEntity, Long>, JpaSpecificationExecutor<ProductEntity> {

    ProductEntity findByProductName(String productName);
    
    ProductEntity findByProductNameAndProductIdNot(String productName, Long productId);

    @Transactional
    @Query(value = "SELECT * FROM PRODUCT P WHERE P.BRAND_ID = :brandId",nativeQuery = true)
    List<ProductEntity> findByBrand(@Param("brandId") Long brandId);
    
    @Transactional
    @Query(value = "SELECT * FROM PRODUCT P left join BRAND B on P.BRAND_ID = B.BRAND_ID WHERE B.BRAND_NAME = :brandName",nativeQuery = true)
    List<ProductEntity> findByBrandName(@Param("brandName") String brandName);
    
//    @Query(value="SELECT * FROM PRODUCT WHERE PRICE >= :fromPrice and PRICE <= toPrice ", nativeQuery = true)
//    List<ProductEntity> findByPrice(@Param("fromPrice") String fromPrice, @Param("toPrice") String toPrice);
    
}
