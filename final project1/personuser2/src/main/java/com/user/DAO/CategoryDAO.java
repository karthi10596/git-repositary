package com.user.DAO;

import java.util.List;


import com.user.entity.Category;
import com.user.entity.User;

public interface CategoryDAO {
	public void addCategory(Category category);
	public List<Category> getCategoryList();
	public void deletecategory(String id);
	public Category getCategory(String id);
	public void editCategory(Category category);
}
