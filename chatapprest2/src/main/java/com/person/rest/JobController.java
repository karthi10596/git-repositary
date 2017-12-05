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

import com.person.DAO.JobDAO;
import com.person.entity.Job;


@RestController
public class JobController {
	@Autowired
    JobDAO jobdao;
	
	@RequestMapping(value="/getAlljobs",method=RequestMethod.GET)
	public List<Job> getAllForum(){
		System.out.println("================getAllJobs=====================");
		return jobdao.getList();
	}
	@RequestMapping(value="/registerjob",method=RequestMethod.POST)
	public ResponseEntity<Job> createJob(@RequestBody Job job){
		 jobdao.addJob(job);
		return new ResponseEntity<Job>(job,HttpStatus.OK);
			}
	@RequestMapping(value="/deletejob/{JobId}",method=RequestMethod.DELETE)
	public ResponseEntity<Job> deleteJob(@PathVariable("JobId")int JobId ,@RequestBody Job job) {
		job.setJobId(JobId);
        jobdao.deletejob(job);
        return new ResponseEntity<Job>(HttpStatus.NO_CONTENT);
    }
	

}
