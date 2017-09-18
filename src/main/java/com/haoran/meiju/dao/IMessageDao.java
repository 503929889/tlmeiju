package com.haoran.meiju.dao;

import java.util.List;

import com.haoran.meiju.entity.Message;

public interface IMessageDao extends ComDao{
	int countByTitle(int titleId);
	List<Object> getPageByTitle(int titleId,int page, int rows);
	int saveMsg(Message msg);
	
//	public Title select(int titleId);
//	public List<Title> selectByTypeID(int typeId);
//	public List selectTitleId(int typeId);
//	public List<Title> selectAll();
//	public List<Title> selectByTitleName(String titleName);
//	public boolean insert(Title tt);
}
