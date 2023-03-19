package coms.HappyNewHeels.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import coms.HappyNewHeels.model.ProductCategory;

@Repository
public interface ProductCategoryRepository  extends JpaRepository<ProductCategory,Long >{

}
