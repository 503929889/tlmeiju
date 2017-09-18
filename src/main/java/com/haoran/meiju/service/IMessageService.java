package com.haoran.meiju.service;

import com.haoran.meiju.entity.Message;
import com.haoran.meiju.entity.Title;
import com.haoran.meiju.model.Page;

public interface IMessageService {
	/**
	 * 
	 * 返回根据标题id查找的留言信息分页
	 * 
	 * @return Page
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎29‎日
	 */
	Page getPageByTitleList(int titleId,int page, int rows);
	/**
	 * 
	 * 返回根据id查找的标题信息
	 * 
	 * @return Title
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎29‎日
	 */
	Title getTitleById(int titleId);
	/**
	 * 
	 * 增加一条留言
	 * 
	 * @return int
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎29‎日
	 */
	int leaveMsg(Message msg);
	
}
