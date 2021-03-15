package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.Cart;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public interface GoodsDao {
	
	//获取商品分类Category
	public List<Category> getAllCategory();
	
	//获取商品店铺shop
	public List<Shop> getAllShop();
	
	//通过类别获取商品goods
	public List<Goods> getGoodsBycategory(String name);
	
	//获取查询商品
	public List<Goods> getGoods(String value);
	
	//修改商品信息
	public boolean updateGoods(int goodId);
	
	//获取全部商品
	public List<Goods> getAllGodds(int pageNum, int pageSize);
	
	//获取商品数量
	public int getGoodsCount();
	
	//添加商品
	public boolean addGoods(Goods goods);
	
	//删除商品
	public boolean delGoods(int goodId);
	
	//添加购物车
	public boolean addCart(Cart cart);
	
	//获取购物车信息
	public Cart getCart(int uid);
}
