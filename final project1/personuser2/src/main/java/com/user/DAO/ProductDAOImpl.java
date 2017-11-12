package com.user.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Category;
import com.user.entity.Product;
import com.user.entity.Supplier;
import com.user.entity.User;
@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	
	SessionFactory sessionFactory;
		
	public void addproduct(Product product)
		{

			try
			{
			
		Session session=sessionFactory.openSession();
			
		Transaction trans=session.beginTransaction();
				
		session.save(product);
				
		trans.commit();
				
		session.flush();
				
		session.close();	
			
	}
			
	catch(Exception e)
			
	{
					
	System.out.println(e);
			
	}
}
	public List<Product> getProductList()
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		List<Product> showproduct=session.createQuery("from Product").list();
		tran.commit();
		session.close();
		return showproduct;
	}
	
	public void deleteproduct(int id)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		Product product=(Product)session.get(Product.class,id); 
		session.delete(product);
		tran.commit();
		session.close();
		
	}
	
	public Product getProduct(int id)
	{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			Product product=(Product)session.get(Product.class,id);
			trans.commit();
			session.flush();
			session.close();
			return product;
	}
	public void editProduct(Product product)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction(); 
		session.update(product);
		tran.commit();
		session.flush();
		session.close();
		}
	public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		List<Category> categories=session.createQuery("from Category").list();
		tran.commit();
		session.close();
		return categories;
	}

}
