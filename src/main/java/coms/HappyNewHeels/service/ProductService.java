package coms.HappyNewHeels.service;

import java.util.List;

import coms.HappyNewHeels.model.Product;
import coms.HappyNewHeels.model.ProductCategory;


public interface ProductService {

	public Product getProductById(Long productCode);
	
	public Product getProductByProductCategory(ProductCategory productCategory);
	
	public void updateProduct(Product product);
	
	public Product saveProduct(Product product);
	public void deleteProduct(Long productCode);
	
	
	public List<Product> getAllProducts();
	
	
}
