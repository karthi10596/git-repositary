package com.person.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table
public class Job {
	@Id
	private int JobId;
	String JobProfile,JobDesc,Qualification,Status;
	
	public int getJobId() {
		return JobId;
	}
	public void setJobId(int jobId) {
		JobId = jobId;
	}
	public String getJobProfile() {
		return JobProfile;
	}
	public void setJobProfile(String jobProfile) {
		JobProfile = jobProfile;
	}
	public String getJobDesc() {
		return JobDesc;
	}
	public void setJobDesc(String jobDesc) {
		JobDesc = jobDesc;
	}
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
}
