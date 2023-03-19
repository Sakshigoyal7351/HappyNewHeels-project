package coms.HappyNewHeels.service;

import java.util.List;

import coms.HappyNewHeels.model.ProductCategory;




public interface ProductCategoryService {
	public ProductCategory getCategoryById(Long id);
	public void updateCategory(ProductCategory category);
	
	public ProductCategory saveCategory(ProductCategory category);
	public void deleteCategory(Long id) ;
	public List<ProductCategory> fetchProductCategoryList();
	 
}

