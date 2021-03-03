package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public interface GoodsBiz {
	
	//获取商品全部分类
	public List<Category> GetAllCate();
	
	//获取商品店铺shop
	public List<Shop> getAllShop();
	
	//通过类别获取商品
	public List<Goods> getGoodsByCate(String name);
	
	//获取查询商品
	public List<Goods> getGoods(String value);
	
	//修改商品信息
	public boolean updateGoods(int goodId);
	
	//获取全部商品
	public List<Goods> getAllGodds(int pageNum, int pageSize);
	
	//获取商品分页
	public int getPageCount(int pageSize);
	
	//添加商品
	public boolean addGoods(Goods goods);
	
	//删除商品
	public boolean delGoods(int goodId);

}
