package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.Cart;
import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public interface GoodsDao {
	
	//��ȡ��Ʒ����Category
	public List<Category> getAllCategory();
	
	//��ȡ��Ʒ����shop
	public List<Shop> getAllShop();
	
	//ͨ������ȡ��Ʒgoods
	public List<Goods> getGoodsBycategory(String name);
	
	//��ȡ��ѯ��Ʒ
	public List<Goods> getGoods(String value);
	
	//�޸���Ʒ��Ϣ
	public boolean updateGoods(int goodId);
	
	//��ȡȫ����Ʒ
	public List<Goods> getAllGodds(int pageNum, int pageSize);
	
	//��ȡ��Ʒ����
	public int getGoodsCount();
	
	//�����Ʒ
	public boolean addGoods(Goods goods);
	
	//ɾ����Ʒ
	public boolean delGoods(int goodId);
	
	//��ӹ��ﳵ
	public boolean addCart(Cart cart);
	
	//��ȡ���ﳵ��Ϣ
	public Cart getCart(int uid);
}
