package com.leonyip.movebooking.biz.impl;

import java.util.List;

import com.leonyip.movebooking.biz.GoodsBiz;
import com.leonyip.movebooking.dao.GoodsDao;
import com.leonyip.movebooking.dao.jdbcimpl.GoodsDaoJdbcImpl;
import com.leonyip.movebooking.entity.Cart;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public class GoodsBizImpl implements GoodsBiz{
	GoodsDao goodsDao = new GoodsDaoJdbcImpl();
	@Override
	public List<Category> GetAllCate() {
		// TODO Auto-generated method stub
		return goodsDao.getAllCategory();
	}
	
	@Override
	public List<Shop> getAllShop() {
		// TODO Auto-generated method stub
		return goodsDao.getAllShop();
	}

	@Override
	public List<Goods> getGoodsByCate(String name) {
		// TODO Auto-generated method stub
		return goodsDao.getGoodsBycategory(name);
	}
	@Override
	public List<Goods> getGoods(String value) {
		// TODO Auto-generated method stub
		return goodsDao.getGoods(value);
	}
	@Override
	public boolean updateGoods(int goodId) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public List<Goods> getAllGodds(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return goodsDao.addGoods(goods);
	}
	@Override
	public boolean delGoods(int goodId) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public int getPageCount(int pageSize) {
		int count = goodsDao.getGoodsCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

	@Override
	public boolean addCart(Cart cart) {
		// TODO Auto-generated method stub
		return goodsDao.addCart(cart);
	}

	@Override
	public Cart getCart(int uid) {
		// TODO Auto-generated method stub
		return goodsDao.getCart(uid);
	}

	@Override
	public boolean delCart(int cartId) {
		// TODO Auto-generated method stub
		return goodsDao.delCart(cartId);
	}
}
