package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.MoveBookingDao;
import com.leonyip.movebooking.entity.MoveBooking;

public class MoveBookingDaoJdbcImpl implements MoveBookingDao {

	public int addBooking(MoveBooking booking) {
		String sql = "insert into move_booking values (null,?,?,?,?,?,?)";
		Object[] obj = new Object[] { booking.getArea(), booking.getCartype(),
				booking.getMovedate(), booking.getContact(),
				booking.getPhone(), booking.getStatus() };
		return DBHelper.executeNonQuery(sql, obj);
	}

	public MoveBooking getBookingById(int id) {
		MoveBooking booking = null;
		try {
			String sql = "select * from move_booking where id = ?";
			ResultSet rs = DBHelper.executeQuery(sql, new Object[] { id });
			if (rs.next()) {
				booking = new MoveBooking(id, rs.getString("area"),
						rs.getString("cartype"), rs.getTimestamp("movedate"),
						rs.getString("contact"), rs.getString("phone"),
						rs.getInt("status"));
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return booking;
	}

	public List<MoveBooking> getBookingsByPaging(int pageNum, int pageSize) {
		List<MoveBooking> list = new ArrayList<MoveBooking>();
		try {
			String sql = "select * from move_booking order by movedate desc limit ?,?";
			Object[] obj = new Object[] { pageSize * (pageNum - 1), pageSize };
			ResultSet rs = DBHelper.executeQuery(sql, obj);
			while (rs.next()) {
				MoveBooking booking = new MoveBooking(rs.getInt("id"),
						rs.getString("area"), rs.getString("cartype"),
						rs.getTimestamp("movedate"), rs.getString("contact"),
						rs.getString("phone"), rs.getInt("status"));
				list.add(booking);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public int getBookingCount() {
		int count = 0;
		String sql;
		try {
			sql = "select count(*) from move_booking";
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

	public int updateBooking(MoveBooking booking) {
		String sql = "update move_booking set status=? where id = ?";
		
		return DBHelper.executeNonQuery(sql, new Object[]{booking.getStatus(), booking.getId()});
	}

}
