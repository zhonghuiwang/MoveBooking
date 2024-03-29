package com.leonyip.movebooking.biz.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.biz.UsersBiz;
import com.leonyip.movebooking.dao.UsersDao;
import com.leonyip.movebooking.dao.jdbcimpl.UsersDaoJdbcImpl;
import com.leonyip.movebooking.entity.Address;
import com.leonyip.movebooking.entity.ResumeBasic;
import com.leonyip.movebooking.entity.ResumeExperience;
import com.leonyip.movebooking.entity.ResumeProjects;
import com.leonyip.movebooking.entity.ResumeSchools;
import com.leonyip.movebooking.entity.ResumeSkills;
import com.leonyip.movebooking.entity.Users;

public class UsersBizImpl implements UsersBiz {
//	UsersDao usersDao = new UsersDaoJdbcImpl();
//	UsersDao usersDao = new UsersDaoHibImpl();
	UsersDao usersDao = new UsersDaoJdbcImpl();
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


	//判断用户是否存在，不存在存入查询。
	public List<Users> login(String phone) {
		List<Users> list = new ArrayList<Users>();
		Users user = usersDao.getUserByName(phone);
		if(user == null){
			 Users users = new Users();
		     users.setName("unknown");
		     users.setPassword("unknown");
		     users.setLocation("unknown");
		     users.setPhone(phone);
		     users.setMember("1");
		     usersDao.addUser(users);
		     user = usersDao.getUserByName(phone);
		}
		list.add(user);
		return list;
	}

	@Override
	public List<Users> weblogin(String name, String password) {
		List<Users> list = new ArrayList<Users>();
		Users user = usersDao.weblogin(name, password);
		list.add(user);
		return list;
	}

	@Override
	public boolean addUsers(Users user) {
		return usersDao.addUser(user);
	}


	@Override
	public boolean addBasic(ResumeBasic basic) throws SQLException {
		return usersDao.addBasic(basic);
	}


	@Override
	public boolean addSkills(ResumeSkills skill) throws SQLException {
		return usersDao.addSkills(skill);
	}


	@Override
	public boolean addProjects(ResumeProjects project) throws SQLException {
		return usersDao.addProjects(project);
	}


	@Override
	public boolean addSchools(ResumeSchools school) throws SQLException {
		return usersDao.addSchools(school);
	}


	@Override
	public boolean addExperience(ResumeExperience exp) throws SQLException {
		return usersDao.addExperience(exp);
	}


	@Override
	public List<ResumeProjects> getResumeProjects(int uid) {
		return usersDao.getResumeProjects(uid);
	}


	@Override
	public List<ResumeSchools> getResumeSchools(int uid) {
		return usersDao.getResumeSchools(uid);
	}


	@Override
	public List<ResumeExperience> getResumeExp(int uid) {
		return usersDao.getResumeExp(uid);
	}


	@Override
	public List<Address> getMyAddress(int uid) {
		return usersDao.getMyAddress(uid);
	}


	@Override
	public boolean addMyAddress(Address address) {
		return usersDao.addMyAddress(address);
	}


	@Override
	public List<Users> getUsersByPaging(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return usersDao.getUsersByPaging(pageNum, pageSize);
	}


	@Override
	public int getPageCount(int pageSize) {
		int count = usersDao.getUsersCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}


	@Override
	public boolean delAddress(int aid) {
		// TODO Auto-generated method stub
		return usersDao.delAddress(aid);
	}


	@Override
	public boolean updateUsers(Users users) {
		// TODO Auto-generated method stub
		return usersDao.updateUsers(users);
	}
}
