package com.leonyip.movebooking.dao.jdbcimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.leonyip.movebooking.dao.GoodsDao;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public class GoodsDaoJdbcImpl implements GoodsDao{

	@Override
	public List<Category> getAllCategory() {
		List<Category> list = new ArrayList<Category>();
		try {
			String sql = "select cateId,CateName from category;";
			ResultSet rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				Category cat = new Category(rs.getInt("cateId"), rs.getString("cateName"));
				
				list.add(cat);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<Shop> getAllShop() {
		List<Shop> list = new ArrayList<Shop>();
		try{
			String sql = "select * from shop;";
			ResultSet rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				Shop shop = new Shop(rs.getInt("shopId"),rs.getString("shopName"),
						rs.getString("shopDescription"), rs.getString("shopDate"), rs.getString("shopQRcode"));
				
				list.add(shop);
			}
			DBHelper.free(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<Goods> getGoodsBycategory(String cateName) {
		List<Goods> list = new ArrayList<Goods>();
		ResultSet rs;
		try{
			if(cateName.equals("") || cateName == null){
				String sql = "select * from goods";
				rs = DBHelper.executeQuery(sql);
			}else{
				String sql = "select * from goods left join category on category.cateId=goods.cateId where cateName = ? ;";
				rs = DBHelper.executeQuery(sql, new Object[] { cateName });
			}
			while(rs.next()) {
				Goods goo = new Goods(rs.getInt("goodId"), rs.getString("goodName"), rs.getInt("goodPrice"),
						rs.getString("priceType"), rs.getInt("goodCount"), rs.getString("countType"),
						rs.getString("goodLogo"), rs.getString("goodImage"), rs.getString("goodDescription"),
						rs.getInt("shopId"), rs.getInt("cateId"));
				
				list.add(goo);
			}
			DBHelper.free(rs);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Goods> getGoods(String value) {
		List<Goods> list = new ArrayList<Goods>();
		ResultSet rs;
		try{
			String sql = "select * from goods left join category on category.cateId=goods.cateId where goodName like '%"+value.replace("\"", "")+"%' ;";
			rs = DBHelper.executeQuery(sql);
			while(rs.next()) {
				Goods goo = new Goods(rs.getInt("goodId"), rs.getString("goodName"), rs.getInt("goodPrice"),
						rs.getString("priceType"), rs.getInt("goodCount"), rs.getString("countType"),
						rs.getString("goodLogo"), rs.getString("goodImage"), rs.getString("goodDescription"),
						rs.getInt("shopId"), rs.getInt("cateId"));
				
				list.add(goo);
			}
			DBHelper.free(rs);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
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
		String sql = "insert into goods values (null,?,?,?,?,?,?,?,?,?,?);";
		Object[] obj = new Object[] { goods.getGoodName(), goods.getGoodPrice(), goods.getPriceType(), goods.getGoodCount(),
				goods.getCountType(), goods.getGoodLogo(), goods.getGoodImage(), goods.getGoodDescription(), goods.getShopId(),
				goods.getCateId()};

		int result = DBHelper.executeNonQuery(sql, obj);
		if(result == 1) return true;
		else return false;
	}

	@Override
	public boolean delGoods(int goodId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getGoodsCount() {
		// TODO Auto-generated method stub
		return 0;
	}
}
