package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.JobSearchDao;
import com.leonyip.movebooking.entity.JobSearch;

public class JobSearchJdbcImpl implements JobSearchDao{

	@Override
	public List<JobSearch> getJobSearchDetail() {
		List<JobSearch> list = new ArrayList<JobSearch>();
		try {
			String sql = "select id, companyName, companyInfo, jobInfo, address, address_detail, tel,"
					+ "category,salary,workExp,education,publish_date,jobCateId,uid from boss;";
			ResultSet rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				JobSearch jobSearch = new JobSearch(rs.getInt("id"), rs.getString("companyName"),
						rs.getString("companyInfo"), rs.getString("jobInfo"),
						rs.getString("address"), rs.getString("address_detail"),
						rs.getString("tel"),
						rs.getString("category"),rs.getString("salary"),
						rs.getString("workExp"),rs.getString("education"),
						rs.getString("publish_date"),rs.getInt("jobCateId"),
						rs.getInt("uid"));
				list.add(jobSearch);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addJobSearch(JobSearch job) {
		String sql = "insert into boss values (null,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		Object[] obj = new Object[] { job.getCompanyName(), job.getCompanyInfo(), job.getJobInfo(), job.getAddress(), job.getAddress_detail(), job.getTel(),
				job.getCategory(), job.getSalary(), job.getWorkExp(), job.getEducation(), job.getPublish_date(), job.getJobCateId(),
				job.getUid()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}

	@Override
	public boolean ifExtResume(int uid) {
		String sql = "select * from resumebasic where uid = ?;";
		ResultSet rs = DBHelper.executeQuery(sql, new Object[] { uid });
		try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}


}
