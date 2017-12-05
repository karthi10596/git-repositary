package com.person.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.person.entity.Job;
@Repository
public class JobDAOImpl implements JobDAO {
@Autowired
SessionFactory sessionfactory;
public void addJob(Job job)
{
	try
	{
		Session session=sessionfactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(job);
		trans.commit();
		session.flush();
		session.close();
	}
	
	catch(Exception ex)
	{
		System.out.println("Error="+ex);
	}
}
public List<Job> getList()
{
	Session session=sessionfactory.openSession();
	Transaction trans=session.beginTransaction();
	List<Job> showuser=session.createQuery("from Job").list();
	trans.commit();
	session.close();
	return showuser;
	
}
public void deletejob(Job job)
{
	Session session=sessionfactory.openSession();
	Transaction trans=session.beginTransaction();  
	session.delete(job);
	trans.commit();
	session.close();
}
}
