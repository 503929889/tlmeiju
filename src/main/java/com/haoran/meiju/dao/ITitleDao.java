package com.haoran.meiju.dao;

import java.util.List;

public interface ITitleDao extends ComDao{
	int countByType(int typeId);
	int countByName(String titleName);
	List<Object> getPageByName(String titleName,int page, int rows);
	List<Object> getPageByType(int typeId,int page, int rows);
	List<Object> getPageSortDateDesc(int page, int rows);
	List<Object> getPageByTypeSortDateDesc(int typeId,int page, int rows);
	List<Object> getPageSortDTimesDesc(int page, int rows);
	List<Object> getPageByTypeSortDTimesDesc(int typeId,int page, int rows);
	
//	public Title select(int titleId);
//	public List<Title> selectByTypeID(int typeId);
//	public List selectTitleId(int typeId);
//	public List<Title> selectAll();
//	public List<Title> selectByTitleName(String titleName);
//	public boolean insert(Title tt);
}
