package com.haoran.meiju.service;

import java.util.List;

import com.haoran.meiju.model.IndexContent;
//
//import entity.Carousel_hotlist;
//import entity.Content;
//import entity.Download_information;
//import entity.Message;
//import entity.Title;


public interface MeijuService {
//	// 获取总下载排行榜列表
//	public List<Download_information> loadDlAllList();
//	
//	//根据类型获取下载列表
//	public List<Download_information> loadDlAllListByType(int typeId);
//
//	// 获取轮播推荐榜列表
//	public List<Carousel_hotlist> loadCHListAll();
//
//	// 获取最新热播榜列表
//	public List<Title> loadHotList();
//
//	// 获取分类型热播榜列表
//	public List<Title> loadHotListByType(int typeId);
//	
//	//根据类型获取标题列表
//	public List<Title> loadTitleList(int typeId);
//	
//	//根据最新时间排行获取全部下载列表
//	public List<Download_information>  loadList();
//	
//	//根据标题id获取一个标题
//	public Title loadTitle(int titleId);
//	
//	//根据标题id获取下载的地址、名称等
//	public List<Download_information> loadDiListByTitleId(int titleId);
//	
//	//根据标题id获取留言相关的信息列表
//	public List<Message> loadMsByTitleId(int titleId);
//	
//	//根据标题id获取一个简介内容
//	public Content loadPlot(int titleId);
//	
//	//对某个美剧发布一个留言
//	public boolean addMessage(String user,int titleId,String content);
//	
//	//根据标题名称模糊获取一个标题列表
//	public List<Title> loadTitleList(String titleName);
	IndexContent showIndex();
	List<Object> getTitleAll();
	List<Object> getCarouselAll();
	Object getTitleById(String id);
	List<Object> getPageByTypeSortDateDesc(int typeId, int page, int rows);
	
}
