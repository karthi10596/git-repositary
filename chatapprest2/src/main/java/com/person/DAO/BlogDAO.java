package com.person.DAO;

import java.util.List;

import com.person.entity.Blog;



public interface BlogDAO {
	public void addBlog(Blog blog);
	public List<Blog> getList();
	public void deleteblog(Blog blog);
}
