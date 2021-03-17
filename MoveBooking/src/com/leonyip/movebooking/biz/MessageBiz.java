package com.leonyip.movebooking.biz;

import java.util.List;

import com.leonyip.movebooking.entity.MessageToWho;

public interface MessageBiz {
	//获取发送信息
		public List<MessageToWho> getToMessage(int uid);
	
	//修改消息状态0为全部
	public boolean updateMessage(int toid);
}
