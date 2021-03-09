package com.leonyip.movebooking.biz.impl;

import java.util.List;

import com.leonyip.movebooking.biz.NewsBiz;
import com.leonyip.movebooking.dao.NewsDao;
import com.leonyip.movebooking.dao.jdbcimpl.NewsDaoJdbcImpl;
import com.leonyip.movebooking.entity.LocalNews;

public class NewsBizImpl implements NewsBiz{
	NewsDao newsDao = new NewsDaoJdbcImpl();
	@Override
	public List<LocalNews> getAllNews() {
		// TODO Auto-generated method stub
		return newsDao.getAllNews();
	}

}
