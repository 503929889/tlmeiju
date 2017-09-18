package com.haoran.meiju.service;

import com.haoran.meiju.entity.Content;

public interface IContentService {
	/**
	 * 
	 * 返回一个根据标题id查找的美剧简介内容
	 * 
	 * @return Content
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	Content getByTitleId(int titleId);
	
}
