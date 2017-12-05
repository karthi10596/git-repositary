package com.person.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.person.DAO.BlogDAO;
import com.person.entity.Blog;

@RestController
public class BlogController {
	@Autowired
    BlogDAO blogdao;
	
	@RequestMapping(value="/getAllBlogs",method=RequestMethod.GET)
	public List<Blog> getAllBlog(){
		System.out.println("================getAllUsers=====================");
		return blogdao.getList();
	}
	@RequestMapping(value="/registerblog",method=RequestMethod.POST)
	public ResponseEntity<Blog> createBlog(@RequestBody Blog blog){
		 blogdao.addBlog(blog);
		return new ResponseEntity<Blog>(blog,HttpStatus.OK);
			}
	@RequestMapping(value="/deleteblog/{BlogID}",method=RequestMethod.DELETE)
	public ResponseEntity<Blog> deleteBlog(@PathVariable("BlogID")int BlogID,@RequestBody Blog blog) {
		blog.setBlogID(BlogID);
        blogdao.deleteblog(blog);
        return new ResponseEntity<Blog>(HttpStatus.NO_CONTENT);
    }
}
