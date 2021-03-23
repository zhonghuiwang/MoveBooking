package com.leonyip.movebooking.biz.impl;

import java.util.List;

import com.leonyip.movebooking.biz.JobSearchBiz;
import com.leonyip.movebooking.dao.JobSearchDao;
import com.leonyip.movebooking.dao.jdbcimpl.JobSearchJdbcImpl;
import com.leonyip.movebooking.entity.JobSearch;

public class JobSearchBizImpl implements JobSearchBiz{
	
	JobSearchDao jobSearchDao = new JobSearchJdbcImpl();
	//对所依赖的项目添加Set方法，以供Spring框架注入时调用
	public void setJobSearchDao(JobSearchDao jobSearchDao){
		this.jobSearchDao = jobSearchDao;
	}
	public List<JobSearch> getAllInfo(String city, String cate) {
		List<JobSearch> job = jobSearchDao.getJobSearchDetail(city, cate);
		return job;
	}
	@Override
	public boolean addJobSearch(JobSearch jobsearch) {
		// TODO Auto-generated method stub
		return jobSearchDao.addJobSearch(jobsearch);
	}
	@Override
	public boolean ifExtResume(int uid) {
		// TODO Auto-generated method stub
		return jobSearchDao.ifExtResume(uid);
	}

}
