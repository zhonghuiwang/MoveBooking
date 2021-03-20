package com.leonyip.movebooking.biz.impl;

import java.util.List;

import com.leonyip.movebooking.biz.MessageBiz;
import com.leonyip.movebooking.dao.MessageDao;
import com.leonyip.movebooking.dao.jdbcimpl.MessageDaoJdbcImpl;
import com.leonyip.movebooking.entity.MessageToWho;

public class MessageBizImpl implements MessageBiz{
	MessageDao messageDao = new MessageDaoJdbcImpl();

	@Override
	public List<MessageToWho> getToMessage(int uid) {
		// TODO Auto-generated method stub
		return messageDao.getToMessage(uid);
	}

	@Override
	public boolean updateMessage(int toid) {
		// TODO Auto-generated method stub
		return messageDao.updateMessage(toid);
	}

	@Override
	public boolean delMessage(int toid) {
		// TODO Auto-generated method stub
		return messageDao.delMessage(toid);
	}

	@Override
	public List<MessageToWho> getMessageByShop(int uid, int shopid) {
		// TODO Auto-generated method stub
		return messageDao.getMessageByShop(uid, shopid);
	}

}
