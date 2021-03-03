package com.leonyip.movebooking.dao.jdbcimpl;

import com.leonyip.movebooking.dao.OrdersDao;
import com.leonyip.movebooking.entity.Orders;

public class OrdersDaoJdbcImpl implements OrdersDao{

	@Override
	public boolean addOrders(Orders orders) {
		String sql = "insert into orders values (null,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] obj = new Object[] { orders.getUid(), orders.getUname(), orders.getUser_tel(),
				orders.getGoods_id(), orders.getOrders_name(), orders.getOrders_price(), orders.getOrders_address(),
				orders.getAmounts(), orders.getOrders_total(), orders.getOrders_time(), orders.getOrders_status()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		
		return false;
	}

}
