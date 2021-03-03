package com.leonyip.movebooking.biz.impl;

import com.leonyip.movebooking.biz.JobApplyBiz;
import com.leonyip.movebooking.dao.JobApplyDao;
import com.leonyip.movebooking.dao.jdbcimpl.JobApplyDaoJdbcImpl;
import com.leonyip.movebooking.entity.JobApply;

public class JobApplyBizImpl implements JobApplyBiz{
	JobApplyDao jobApplyDao = new JobApplyDaoJdbcImpl();

	@Override
	public boolean insertJobApply(JobApply jobApply) {
		//�жϣ������������������ݿ�д�룬����д��
		if(jobApplyDao.ifApplyJob(jobApply)){
			return true;
		}
		return jobApplyDao.insertApplyJob(jobApply);
	}

}
