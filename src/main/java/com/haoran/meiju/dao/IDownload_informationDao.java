package com.haoran.meiju.dao;

import java.util.List;


public interface IDownload_informationDao extends ComDao{
	List<Object> getByTitleId(int titleId);
	List<Object> getPageSortTimesDesc(int page, int rows);
	List<Object> getPageByTypeSortTimesDesc(int typeId, int page, int rows);

}