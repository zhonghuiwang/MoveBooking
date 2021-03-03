package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.Category;
import com.leonyip.movebooking.entity.Goods;
import com.leonyip.movebooking.entity.Shop;

public interface GoodsBiz {
	
	//��ȡ��Ʒȫ������
	public List<Category> GetAllCate();
	
	//��ȡ��Ʒ����shop
	public List<Shop> getAllShop();
	
	//ͨ������ȡ��Ʒ
	public List<Goods> getGoodsByCate(String name);
	
	//��ȡ��ѯ��Ʒ
	public List<Goods> getGoods(String value);
	
	//�޸���Ʒ��Ϣ
	public boolean updateGoods(int goodId);
	
	//��ȡȫ����Ʒ
	public List<Goods> getAllGodds(int pageNum, int pageSize);
	
	//��ȡ��Ʒ��ҳ
	public int getPageCount(int pageSize);
	
	//�����Ʒ
	public boolean addGoods(Goods goods);
	
	//ɾ����Ʒ
	public boolean delGoods(int goodId);

}
