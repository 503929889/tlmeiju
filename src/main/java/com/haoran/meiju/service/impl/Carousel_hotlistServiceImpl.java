package com.haoran.meiju.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.ICarousel_hotlistDao;
import com.haoran.meiju.service.ICarousel_hotlistService;

/**
 * 
 * 轮播逻辑层
 * 
 * @author 黎浩然
 * 
 * @Time 2017-08-28
 * 
 */
@Service("carousel_hotlistService")
public class Carousel_hotlistServiceImpl implements ICarousel_hotlistService{

	@Autowired
	private ICarousel_hotlistDao carousel_hotlistDao;
	
	/**
	 * 
	 * 返回轮播列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@Override
	public List<Object> getCarouselList() {
		return carousel_hotlistDao.getAll();
	}

}
