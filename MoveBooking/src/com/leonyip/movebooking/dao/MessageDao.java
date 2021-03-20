package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.MessageToWho;

public interface MessageDao {

	//获取个人消息
	public List<MessageToWho> getToMessage(int uid);
	
	//修改消息状态0为全部
	public boolean updateMessage(int toid);
	
	//删除消息
	public boolean delMessage(int toid);
	
	//按商户获取个人消息
	public List<MessageToWho> getMessageByShop(int uid, int shopid);
}
