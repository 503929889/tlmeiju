package com.haoran.meiju.service;

import java.util.List;

import com.haoran.meiju.entity.Title;
import com.haoran.meiju.model.Page;

public interface ITitleService {
	/**
	 * 
	 * 返回一个最新热播的标题列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	List<Object> getRecentlyHitList(int page, int rows);
	/**
	 * 
	 * 返回一个根据类型区分的最新播出的美剧的标题列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	List<Object> getByTypeHitList(int page, int rows);
	/**
	 * 
	 * 返回总排行榜的标题列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	List<Object> getTotalRankList(int page, int rows);
	/**
	 * 
	 * 返回一个根据类型区分的排行榜的标题列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	List<Object> getByTypeRankList(int typeId,int page, int rows);
	/**
	 * 
	 * 返回根据类型区分的具有分页的标题列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	Page getPageByTypeList(int typeId,int page, int rows);
	/**
	 * 
	 * 返回根据名字模糊查找的分页
	 * 
	 * @return Page
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	Page getPageByNameList(String titleName,int page, int rows);
	/**
	 * 
	 * 返回根据id查找的标题信息
	 * 
	 * @return Title
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	Title getTitleById(int titleId);
	
}
