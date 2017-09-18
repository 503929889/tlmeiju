package com.haoran.meiju.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.IDownload_informationDao;
import com.haoran.meiju.service.IDownloadInformationService;

@Service("downloadInformationService")
public class DownloadInformationServiceImpl implements IDownloadInformationService{

	@Autowired
	private IDownload_informationDao download_informationDao;
	
	@Override
	public List<Object> getDownloadList() {
		return download_informationDao.getPageSortTimesDesc(0, 9);
	}

	@Override
	public List<Object> getDownloadByTypeList() {
		List<Object> list=new ArrayList<Object>();
		for(int i=1;i<3;i++){
			list.add(download_informationDao.getPageByTypeSortTimesDesc(i*10000, 0, 6));
		}
		return list;
	}

	@Override
	public List<Object> getByTitleId(int titleId) {
		return download_informationDao.getByTitleId(titleId);
	}
}
