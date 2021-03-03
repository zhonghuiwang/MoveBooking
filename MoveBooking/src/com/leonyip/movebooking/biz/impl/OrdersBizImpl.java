package com.leonyip.movebooking.biz.impl;

import com.leonyip.movebooking.biz.OrdersBiz;
import com.leonyip.movebooking.dao.OrdersDao;
import com.leonyip.movebooking.dao.UsersDao;
import com.leonyip.movebooking.dao.jdbcimpl.OrdersDaoJdbcImpl;
import com.leonyip.movebooking.dao.jdbcimpl.UsersDaoJdbcImpl;
import com.leonyip.movebooking.entity.Orders;

public class OrdersBizImpl implements OrdersBiz{
	OrdersDao ordersDao = new OrdersDaoJdbcImpl();
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	@Override
	public boolean addOrders(Orders orders) {
		// TODO Auto-generated method stub
		return ordersDao.addOrders(orders);
	}

}
