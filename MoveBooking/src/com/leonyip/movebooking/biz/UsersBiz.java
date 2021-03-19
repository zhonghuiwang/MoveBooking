package com.leonyip.movebooking.biz;

import java.sql.SQLException;
import java.util.List;

import com.leonyip.movebooking.entity.Address;
import com.leonyip.movebooking.entity.MoveBooking;
import com.leonyip.movebooking.entity.ResumeBasic;
import com.leonyip.movebooking.entity.ResumeExperience;
import com.leonyip.movebooking.entity.ResumeProjects;
import com.leonyip.movebooking.entity.ResumeSchools;
import com.leonyip.movebooking.entity.ResumeSkills;
import com.leonyip.movebooking.entity.Users;

public interface UsersBiz {
	public List<Users> login(String phone);
	
	public List<Users> weblogin(String name,String password);
	
	public boolean addUsers(Users user);
	
	public boolean addBasic(ResumeBasic basic) throws SQLException;
	
	public boolean addSkills(ResumeSkills skill) throws SQLException;
	
	public boolean addProjects(ResumeProjects project) throws SQLException;
	
	public boolean addSchools(ResumeSchools school) throws SQLException;
	
	public boolean addExperience(ResumeExperience exp) throws SQLException;
	
	public List<ResumeProjects> getResumeProjects(int uid);
	
	public List<ResumeSchools> getResumeSchools(int uid);
	
	public List<ResumeExperience> getResumeExp(int uid);
	
	public List<Address> getMyAddress(int uid);
	
	public boolean addMyAddress(Address address);
	
	public List<Users> getUsersByPaging(int pageNum, int pageSize);
	
	public int getPageCount(int pageSize);
	
	public boolean delAddress(int aid);
}
