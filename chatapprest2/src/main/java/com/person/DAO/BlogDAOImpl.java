package com.person.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.person.entity.Blog;

@Repository
public class BlogDAOImpl implements BlogDAO {
	@Autowired
	SessionFactory sessionfactory;
	
	public void addBlog(Blog blog) {
		// TODO Auto-generated method stub
		
		try
		{
			Session session=sessionfactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(blog);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
		
		
	}
	public List<Blog> getList()
	{
		Session session=sessionfactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Blog> showuser=session.createQuery("from Blog").list();
		trans.commit();
		session.close();
		return showuser;
		
	}
	public void deleteblog(Blog blog)
	{
		Session session=sessionfactory.openSession();
		Transaction trans=session.beginTransaction();  
		session.delete(blog);
		trans.commit();
		session.close();

	}


}
