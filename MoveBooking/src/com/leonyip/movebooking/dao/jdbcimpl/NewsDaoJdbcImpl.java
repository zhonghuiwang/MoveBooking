package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.leonyip.movebooking.dao.NewsDao;
import com.leonyip.movebooking.entity.LocalNews;

public class NewsDaoJdbcImpl implements NewsDao{

	@Override
	public List<LocalNews> getAllNews() {
		List<LocalNews> list = new ArrayList<LocalNews>();
		try {
			String sql = "select nid,ntitle,ncontent,nimage,npublisher,npubtime from news order by nid desc limit 30;"; //查询最新30条数据
			ResultSet rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				LocalNews local = new LocalNews(rs.getInt("nid"), rs.getString("ntitle"), rs.getString("ncontent"),
						rs.getString("nimage"), rs.getString("npublisher"), rs.getString("npubtime"));
				
				list.add(local);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
