package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.LocalNews;

public interface NewsDao {
	
	//获取全部新闻
		public List<LocalNews> getAllNews();
}
