package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.MoveBooking;

public interface MoveBookingBiz {
	public int addBooking(MoveBooking booking);
	public int updateBooking(MoveBooking booking);
	public MoveBooking getBookingById(int id);
	public List<MoveBooking> getBookingsByPaging(int pageNum, int pageSize);
	public int getPageCount(int pageSize);
}
