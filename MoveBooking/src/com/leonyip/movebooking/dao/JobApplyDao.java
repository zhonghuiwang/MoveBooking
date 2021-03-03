package com.leonyip.movebooking.dao;

import com.leonyip.movebooking.entity.JobApply;

public interface JobApplyDao {
	public boolean insertApplyJob(JobApply jobApply);
	
	public boolean ifApplyJob(JobApply jobApply);
}
