package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.MoveBooking;

public interface MoveBookingDao {
	public int addBooking(MoveBooking booking);
	public MoveBooking getBookingById(int id);
	public List<MoveBooking> getBookingsByPaging(int pageNum, int pageSize);
	public int getBookingCount();
	public int updateBooking(MoveBooking booking);
}
