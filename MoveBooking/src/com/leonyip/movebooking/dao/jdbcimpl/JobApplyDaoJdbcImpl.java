package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.leonyip.movebooking.dao.JobApplyDao;
import com.leonyip.movebooking.entity.JobApply;

public class JobApplyDaoJdbcImpl implements JobApplyDao{


	@Override
	public boolean insertApplyJob(JobApply jobApply) {
		String sql = "insert into jobapply values (null,?,?)";
		Object[] obj = new Object[] { jobApply.getApplycompany(),jobApply.getApplyuser()};
		if(DBHelper.executeNonQuery(sql, obj) == 1){
			return true;
		}else{
			return false;
		}
	}
	
	public boolean ifApplyJob(JobApply jobApply){
		String sql = "select * from jobapply where applycompany = ? and applyuser = ?;";
		Object[] obj = new Object[] { jobApply.getApplycompany(),jobApply.getApplyuser()};
		ResultSet rs = DBHelper.executeQuery(sql, obj);
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
