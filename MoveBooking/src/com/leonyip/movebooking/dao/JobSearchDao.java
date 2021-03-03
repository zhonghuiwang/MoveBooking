package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.JobSearch;

public interface JobSearchDao {
	public List<JobSearch> getJobSearchDetail();
	
	public boolean addJobSearch(JobSearch jobsearch);
	
	public boolean ifExtResume(int uid);
}
