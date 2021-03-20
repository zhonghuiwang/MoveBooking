package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.MessageDao;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.MessageToWho;

public class MessageDaoJdbcImpl implements MessageDao{

	@Override
	public List<MessageToWho> getToMessage(int uid) {
		List<MessageToWho> list = new ArrayList<MessageToWho>();
		try {
			String sql = "select u.id,w.uid,m.shopid,m.mid,w.toid,shopName,shopImg,mtitle,mcontent,m.mtime,w.tstatus "
					+ "from users as u ,shop as s ,message as m ,messagetowho as w "
					+ "where m.mid = w.mid and s.shopId = m.shopid and u.id = s.uid and w.uid=? "
					+ "and m.mtime in (select max(mtime) from message group by shopid) order by mtime desc;";
			ResultSet rs = DBHelper.executeQuery(sql, new Object[] { uid });
			while(rs.next()) {
				MessageToWho msg = new MessageToWho(rs.getInt("id"), rs.getInt("uid"), rs.getInt("shopid"), rs.getInt("mid"),
						rs.getInt("toid"),rs.getString("shopName"), rs.getString("shopImg"), rs.getString("mtitle"), rs.getString("mcontent"),
						rs.getString("mtime"), rs.getInt("tstatus"));
				
				list.add(msg);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean updateMessage(int toid) {
		String sql = "update messagetowho set tstatus=1 where toid=?;";
		int rs = DBHelper.executeNonQuery(sql, new Object[]{toid});
		if(rs == 1) return true;
		return false;
	}

	@Override
	public boolean delMessage(int toid) {
		String sql = "delete from messagetowho where toid=?;";
		int rs = DBHelper.executeNonQuery(sql, new Object[]{toid});
		if(rs == 1) return true;
		return false;
	}

	@Override
	public List<MessageToWho> getMessageByShop(int uid, int shopid) {
		List<MessageToWho> list = new ArrayList<MessageToWho>();
		try {
			String sql ="select u.id,w.uid,m.shopid,m.mid,w.toid,shopName,shopImg,mtitle,mcontent,m.mtime,w.tstatus from users as u ,shop as s ,message as m ,messagetowho as w "
					+ "where m.mid = w.mid and s.shopId = m.shopid and u.id = s.uid and w.uid=? and m.shopid=?;";
			ResultSet rs = DBHelper.executeQuery(sql, new Object[] { uid, shopid });
			while(rs.next()) {
				MessageToWho msg = new MessageToWho(rs.getInt("id"), rs.getInt("uid"), rs.getInt("shopid"), rs.getInt("mid"),
						rs.getInt("toid"),rs.getString("shopName"), rs.getString("shopImg"), rs.getString("mtitle"), rs.getString("mcontent"),
						rs.getString("mtime"), rs.getInt("tstatus"));
				
				list.add(msg);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
