package com.haoran.meiju.service;

import java.util.List;

public interface IDownloadInformationService {
	/**
	 * 
	 * 返回一个根据标题id查找的下载列表
	 * 
	 * @return List<Object>
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	List<Object> getByTitleId(int titleId);
	List<Object> getDownloadList();
	List<Object> getDownloadByTypeList();
}
