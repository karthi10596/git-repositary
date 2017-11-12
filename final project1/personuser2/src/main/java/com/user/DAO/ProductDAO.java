package com.user.DAO;

import java.util.List;

import com.user.entity.Category;
import com.user.entity.Product;


public interface ProductDAO {
	public void addproduct(Product product);
	public List<Product> getProductList();
	public void deleteproduct(int id);
	public Product getProduct(int id);
	public void editProduct(Product product);
	List<Category> getAllCategories();
	
}
