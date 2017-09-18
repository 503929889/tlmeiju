package com.haoran.meiju.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.IContentDao;
import com.haoran.meiju.entity.Content;
import com.haoran.meiju.service.IContentService;

/**
 * 
 * 美剧简介内容逻辑层
 * 
 * @author 黎浩然
 * 
 * @Time 2017-08-29
 * 
 */
@Service("contentService")
public class ContentServiceImpl implements IContentService{

	@Autowired
	private IContentDao contentDao;
	
	@Override
	public Content getByTitleId(int titleId) {
		return contentDao.getByTitleId(titleId);
	}

	

}
