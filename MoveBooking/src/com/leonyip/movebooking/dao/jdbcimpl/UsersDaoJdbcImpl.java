package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.UsersDao;
import com.leonyip.movebooking.entity.Address;
import com.leonyip.movebooking.entity.JobSearch;
import com.leonyip.movebooking.entity.MoveBooking;
import com.leonyip.movebooking.entity.ResumeBasic;
import com.leonyip.movebooking.entity.ResumeExperience;
import com.leonyip.movebooking.entity.ResumeProjects;
import com.leonyip.movebooking.entity.ResumeSchools;
import com.leonyip.movebooking.entity.ResumeSkills;
import com.leonyip.movebooking.entity.Users;

public class UsersDaoJdbcImpl implements UsersDao {
	public Users getUserByName(String userName,String password) {
		Users user = new Users();
		try {
			String sql = "select id,name,password,phone,location,member from users where name = ? and password = ?";
			ResultSet rs = DBHelper.executeQuery(sql, new Object[] { userName,password });
			if(rs.next()) {
				user = new Users(rs.getInt("id"), rs.getString("name"),
						rs.getString("password"), rs.getString("phone"),
						rs.getString("location"), rs.getString("member"));
				
			}else{
				user = new Users(0, "super", "super", "super", "super", "super");
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public boolean addUser(Users user) {
		String sql = "insert into users values (null,?,?,?,?,?)";
		Object[] obj = new Object[] { user.getName(), user.getPassword(),
				user.getPhone(), user.getLocation(), user.getMember() };

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		
		return false;
	}

	@Override
	public boolean addBasic(ResumeBasic basic) throws SQLException {
		String ifSql = "select resume_bid from resumebasic;";
		int ifHas=getResumeIsHave(ifSql,"resume_bid");
		if(ifHas == -1){
			String sql = "insert into resumebasic values (null,?,?,?,?,?,?,?);";
			Object[] obj = new Object[] { basic.getResume_name(), basic.getResume_salary(),
					basic.getResume_location(), basic.getResume_workl(), basic.getResume_tel(),
					basic.getResume_email(),basic.getUid()};

			int result = DBHelper.executeNonQuery(sql, obj);
			if(result == 1) return true;
			else return false;
		}else{
			String sql = "update resumebasic set resume_name=?, resume_salary=?, resume_location=?,"
					+ "resume_workl=?, resume_tel=?,resume_email=?,uid=? where resume_bid = ?;";
			
			int result = DBHelper.executeNonQuery(sql, new Object[]{basic.getResume_name(), basic.getResume_salary(),
					basic.getResume_location(), basic.getResume_workl(), basic.getResume_tel(),
					basic.getResume_email(),basic.getUid(),ifHas});
			if(result == 1) return true;
			else return false;
		}
	}

	@Override
	public boolean addSkills(ResumeSkills skill) throws SQLException {
		String ifSql = "select resume_sid from resumeskills;";
		int ifHas=getResumeIsHave(ifSql,"resume_sid");
		if(ifHas == -1){
			String sql = "insert into resumeskills values (null,?,?,?);";
			Object[] obj = new Object[] {skill.getResume_skill(), skill.getResume_rcm(), skill.getUid()};

			int result = DBHelper.executeNonQuery(sql, obj);
			if(result == 1) return true;
			else return false;
		}else{
			String sql = "update resumeskills set resume_skill=?, resume_rcm=?, uid=? where resume_sid = ?;";
			
			int result = DBHelper.executeNonQuery(sql, new Object[]{skill.getResume_skill(),skill.getResume_rcm(),skill.getUid(),ifHas});
			if(result == 1) return true;
			else return false;
		}
	}

	@Override
	public boolean addProjects(ResumeProjects project) throws SQLException {
		String sql = "insert into resumeproject values (null,?,?,?,?);";
		Object[] obj = new Object[] { project.getResume_pname(), project.getResume_pward(),
				project.getResume_pdescription(), project.getUid()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}

	@Override
	public boolean addSchools(ResumeSchools school) throws SQLException {
		String sql = "insert into resumeschool values (null,?,?,?,?,?);";
		Object[] obj = new Object[] { school.getResume_ename(), school.getResume_elocation(), school.getResume_grade(),
				school.getResume_edescription(), school.getUid()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}

	@Override
	public boolean addExperience(ResumeExperience exp) throws SQLException {
		String sql = "insert into resumeexperience values (null,?,?,?,?,?);";
		Object[] obj = new Object[] { exp.getResume_jname(), exp.getResume_jlocation(), exp.getResume_jdo(),
				exp.getResume_jdescription(), exp.getUid()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}
	
	public int getResumeIsHave(String sql,String id) throws SQLException{
		ResultSet rs = DBHelper.executeQuery(sql);
		if (rs.next()) {
			return rs.getInt(id);
		}
		return -1;
	}

	@Override
	public List<ResumeProjects> getResumeProjects(int uid) {
		List<ResumeProjects> list = new ArrayList<ResumeProjects>();
		try {
			String sql = "select resume_pid,resume_pname,resume_pward,resume_pdescription,uid from resumeproject where uid=?;";
			ResultSet rs = DBHelper.executeQuery(sql,new Object[] { uid });
			while(rs.next()) {
				ResumeProjects resumeProject = new ResumeProjects(rs.getInt("resume_pid"),
						rs.getString("resume_pname"),rs.getString("resume_pward"),
						rs.getString("resume_pdescription"),rs.getInt("uid"));
				list.add(resumeProject);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<ResumeSchools> getResumeSchools(int uid) {
		List<ResumeSchools> list = new ArrayList<ResumeSchools>();
		try {
			String sql = "select resume_eid,resume_ename,resume_elocation,resume_egrade,resume_edescription,uid from resumeschool where uid=?;";
			ResultSet rs = DBHelper.executeQuery(sql,new Object[] { uid });
			while(rs.next()) {
				ResumeSchools resumeSchools = new ResumeSchools(rs.getInt("resume_eid"),
						rs.getString("resume_ename"),rs.getString("resume_elocation"),rs.getString("resume_egrade"),
						rs.getString("resume_edescription"),rs.getInt("uid"));
				list.add(resumeSchools);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<ResumeExperience> getResumeExp(int uid) {
		List<ResumeExperience> list = new ArrayList<ResumeExperience>();
		try {
			String sql = "select resume_jid,resume_jname,resume_jlocation,resume_jdo,resume_jdescription,uid from resumeexperience where uid=?;";
			ResultSet rs = DBHelper.executeQuery(sql,new Object[] { uid });
			while(rs.next()) {
				ResumeExperience experience = new ResumeExperience(rs.getInt("resume_jid"),
						rs.getString("resume_jname"),rs.getString("resume_jlocation"),rs.getString("resume_jdo"),
						rs.getString("resume_jdescription"),rs.getInt("uid"));
				list.add(experience);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Address> getMyAddress(int uid) {
		List<Address> list = new ArrayList<Address>();
		try {
			String sql = "select addr_id, addr_info,uid from address where uid=?;";
			ResultSet rs = DBHelper.executeQuery(sql,new Object[] { uid });
			while(rs.next()) {
				Address address = new Address(rs.getInt("addr_id"),
						rs.getString("addr_info"),rs.getInt("uid"));
				list.add(address);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean addMyAddress(Address address) {
		String sql = "insert into address values (null,?,?);";
		Object[] obj = new Object[] { address.getAddr_info(), address.getUid()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}

	@Override
	public List<Users> getUsersByPaging(int pageNum, int pageSize) {
		List<Users> list = new ArrayList<Users>();
		try {
			String sql = "select * from users order by id desc limit ?,?";
			Object[] obj = new Object[] { pageSize * (pageNum - 1), pageSize };
			ResultSet rs = DBHelper.executeQuery(sql, obj);
			while (rs.next()) {
				Users users = new Users(rs.getInt("id"), rs.getString("name"),
						rs.getString("password"), rs.getString("phone"),
						rs.getString("location"), rs.getString("member"));
				list.add(users);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getUsersCount() {
		int count = 0;
		String sql;
		try {
			sql = "select count(*) from users";
			ResultSet rs = DBHelper.executeQuery(sql);
			if (rs.next()) {
				count = rs.getInt(1);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

}
