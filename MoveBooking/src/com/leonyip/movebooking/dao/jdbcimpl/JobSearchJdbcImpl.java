package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.JobSearchDao;
import com.leonyip.movebooking.entity.JobSearch;
import com.leonyip.movebooking.entity.Users;

public class JobSearchJdbcImpl implements JobSearchDao{

	@Override
	public List<JobSearch> getJobSearchDetail(String city, String cate) {
		List<JobSearch> list = new ArrayList<JobSearch>();
		if(city == "全部城市" || city.equals("全部城市")) city = "";
		if(cate == "全部分类" || cate.equals("全部分类")) cate = "";
		String sql = "select b.id, jobTitle,companyName, companyInfo, jobInfo, address, address_detail, tel,category,salary,workExp,education,publish_date,jobCateId,uid,"
				+ "u.id,name,password,phone,location,avatar,member "
				+ "from boss as b,users as u "
				+ "where b.uid=u.id and category like '%"+cate+"%' and address like'%"+city+"%';";
		try {
			ResultSet rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				Users user = new Users(rs.getInt("uid"), rs.getString("name"),
						rs.getString("password"), rs.getString("phone"),
						rs.getString("location"), rs.getString("avatar"),
						rs.getString("member"));
				JobSearch jobSearch = new JobSearch(rs.getInt("id"), rs.getString("jobTitle"), rs.getString("companyName"),
						rs.getString("companyInfo"), rs.getString("jobInfo"),
						rs.getString("address"), rs.getString("address_detail"),
						rs.getString("tel"),
						rs.getString("category"),rs.getString("salary"),
						rs.getString("workExp"),rs.getString("education"),
						rs.getString("publish_date"),rs.getInt("jobCateId"),
						user);
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
		String sql = "insert into boss values (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		Object[] obj = new Object[] { job.getJobTitle(), job.getCompanyName(), job.getCompanyInfo(), job.getJobInfo(), job.getAddress(), job.getAddress_detail(), job.getTel(),
				job.getCategory(), job.getSalary(), job.getWorkExp(), job.getEducation(), job.getPublish_date(), job.getJobCateId(),
				job.getUser().getId()};

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
