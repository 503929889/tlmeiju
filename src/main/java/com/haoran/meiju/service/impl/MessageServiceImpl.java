package com.haoran.meiju.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.IMessageDao;
import com.haoran.meiju.entity.Message;
import com.haoran.meiju.entity.Title;
import com.haoran.meiju.model.Page;
import com.haoran.meiju.service.IMessageService;

/**
 * 
 * 标题逻辑层
 * 
 * @author 黎浩然
 * 
 * @Time 2017-08-28
 * 
 */
@Service("messageService")
public class MessageServiceImpl implements IMessageService {

	@Autowired
	private IMessageDao messageDao;

	@Override
	public Page getPageByTitleList(int titleId, int page, int rows) {
		Page p=new Page();
		p.setTotal(messageDao.countByTitle(titleId));
		p.setPage(page);
		p.setRows(messageDao.getPageByTitle(titleId, (page-1)*rows, rows));
		return p;
	}

	@Override
	public Title getTitleById(int titleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int leaveMsg(Message msg) {
		return messageDao.saveMsg(msg);
	}


}
