package com.leonyip.movebooking.dao;

import java.util.List;

import com.leonyip.movebooking.entity.MessageToWho;

public interface MessageDao {

	//��ȡ������Ϣ
	public List<MessageToWho> getToMessage(int uid);
	
	//�޸���Ϣ״̬0Ϊȫ��
	public boolean updateMessage(int toid);
	
	//ɾ����Ϣ
	public boolean delMessage(int toid);
}
