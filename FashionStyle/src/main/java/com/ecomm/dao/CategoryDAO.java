package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.Category;

public interface CategoryDAO {

	public boolean addCategory(Category category);
	//public boolean deleteCategory(int categoryId);
	public boolean updateCategory(Category category);
	public Category getCategory(int categoryId);
	public List<Category> retriveCategories();
	boolean deleteCategory(Category category);
	
	
}
