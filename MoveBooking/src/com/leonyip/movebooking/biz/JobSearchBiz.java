package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.JobSearch;

public interface JobSearchBiz {
	public List<JobSearch> getAllInfo();
	
	public boolean addJobSearch(JobSearch jobsearch);
	
	public boolean ifExtResume(int uid);
}
