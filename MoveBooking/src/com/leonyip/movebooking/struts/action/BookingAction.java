package com.leonyip.movebooking.struts.action;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.leonyip.movebooking.biz.MoveBookingBiz;
import com.leonyip.movebooking.entity.MoveBooking;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BookingAction extends ActionSupport implements ModelDriven<MoveBooking> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MoveBooking booking = new MoveBooking();
//	MoveBookingBiz moveBookingBiz = new MoveBookingBizImpl();
	//读取Spring配置文件，并取得相应的Bean
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	MoveBookingBiz moveBookingBiz = (MoveBookingBiz) ac.getBean("moveBookingBiz");
	
	private int pageNum;
	private int pageSize;
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return
	 */
	public String doAdd() {
		booking.setStatus(0);
		moveBookingBiz.addBooking(booking);
		return SUCCESS;
	}
	
	public String doSearch(){
		List<MoveBooking> bookingList = moveBookingBiz.getBookingsByPaging(pageNum, pageSize);
		ActionContext.getContext().put("bookingList", bookingList);
		ActionContext.getContext().put("pageCount", moveBookingBiz.getPageCount(pageSize));
		return "list";
	}
	
	public String toDetail(){
		MoveBooking b = moveBookingBiz.getBookingById(booking.getId());
		ActionContext.getContext().getValueStack().push(b);
		return "detail";
	}
	
	public String toEdit(){
		MoveBooking b = moveBookingBiz.getBookingById(booking.getId());
		ActionContext.getContext().getValueStack().push(b);
		return "edit";
	}
	
	public String doEdit(){
		MoveBooking b = moveBookingBiz.getBookingById(booking.getId());
		b.setStatus(booking.getStatus());
		moveBookingBiz.updateBooking(b);
		return SUCCESS;
	}
	
	public MoveBooking getModel() {
		return booking;
	}
}