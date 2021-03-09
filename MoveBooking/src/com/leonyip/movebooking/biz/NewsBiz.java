package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.LocalNews;

public interface NewsBiz {
	
	//获取全部新闻
	public List<LocalNews> getAllNews();

}
