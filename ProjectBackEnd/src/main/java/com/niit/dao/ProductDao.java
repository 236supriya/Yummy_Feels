package com.niit.dao;

import java.util.List;

import com.niit.models.Category;
import com.niit.models.Product;

public interface ProductDao 
{
	void saveOrUpdate(Product product);
	Product getProduct(int id);
	void deleteProduct(int id);
	void addCategory(Category category);
	List<Product> getAllProducts();
	List<Category> getAllCategories();

}