package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Product;

public interface ProductDAO {
	public boolean addProduct(Product product);
	//public boolean deleteProduct(int productId);
	public boolean updateProduct(Product product);
	public Product getProduct(int productId);
	Product getProductById(String productId);

	public List<Product> retriveProducts();
	boolean deleteProduct(Product product);
}
