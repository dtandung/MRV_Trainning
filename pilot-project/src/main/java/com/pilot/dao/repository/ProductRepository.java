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
  
  @Query(value="select p from PRODUCT p where p.BRAND_ID = :brandId")
  List<ProductEntity> findProductByBrandId( @Param("brandId") Long brandId);
}
