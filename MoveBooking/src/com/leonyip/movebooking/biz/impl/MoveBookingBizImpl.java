package com.leonyip.movebooking.biz.impl;

import java.util.List;

import com.leonyip.movebooking.biz.MoveBookingBiz;
import com.leonyip.movebooking.dao.MoveBookingDao;
import com.leonyip.movebooking.entity.MoveBooking;

public class MoveBookingBizImpl implements MoveBookingBiz {
	MoveBookingDao moveBookingDao;
	//对所依赖的项目添加Set方法，以供Spring框架注入时调用
	public void setMoveBookingDao(MoveBookingDao moveBookingDao) {
		this.moveBookingDao = moveBookingDao;
	}

	public int addBooking(MoveBooking booking) {
		return moveBookingDao.addBooking(booking);
	}

	public int updateBooking(MoveBooking booking) {
		return moveBookingDao.updateBooking(booking);
	}

	public MoveBooking getBookingById(int id) {
		return moveBookingDao.getBookingById(id);
	}

	public List<MoveBooking> getBookingsByPaging(int pageNum, int pageSize) {
		return moveBookingDao.getBookingsByPaging(pageNum, pageSize);
	}

	public int getPageCount(int pageSize) {
		int count = moveBookingDao.getBookingCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

}
