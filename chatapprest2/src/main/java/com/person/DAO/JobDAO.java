package com.person.DAO;

import java.util.List;

import com.person.entity.Job;



public interface JobDAO {
	public void addJob(Job job);
	public List<Job> getList();
	public void deletejob(Job job);
}
