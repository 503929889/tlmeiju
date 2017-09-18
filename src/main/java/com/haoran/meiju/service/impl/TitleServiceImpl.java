package com.haoran.meiju.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.ITitleDao;
import com.haoran.meiju.entity.Title;
import com.haoran.meiju.model.Page;
import com.haoran.meiju.service.ITitleService;

/**
 * 
 * 标题逻辑层
 * 
 * @author 黎浩然
 * 
 * @Time 2017-08-28
 * 
 */
@Service("titleService")
public class TitleServiceImpl implements ITitleService {

	@Autowired
	private ITitleDao titleDao;

	@Override
	public List<Object> getRecentlyHitList(int page, int rows) {
		return titleDao.getPageSortDateDesc((page - 1) * rows, rows);
	}

	@Override
	public List<Object> getByTypeHitList(int page, int rows) {
		List<Object> list = new ArrayList<Object>();
		for (int i = 1; i < 3; i++) {
			list.add(titleDao.getPageByTypeSortDateDesc(i * 10000, (page - 1) * rows, rows));
		}
		return list;
	}

	@Override
	public List<Object> getTotalRankList(int page, int rows) {
		return titleDao.getPageSortDTimesDesc((page - 1) * rows, rows);
	}

	@Override
	public List<Object> getByTypeRankList(int typeId, int page, int rows) {
		if (typeId != 0) {
			return titleDao.getPageByTypeSortDTimesDesc(typeId, (page - 1) * rows, rows);
		} else {
			List<Object> list = new ArrayList<Object>();
			for (int i = 1; i < 3; i++) {
				list.add(titleDao.getPageByTypeSortDTimesDesc(i * 10000, (page - 1) * rows, rows));
			}
			return list;
		}
	}

	@Override
	public Page getPageByTypeList(int typeId, int page, int rows) {
		Page p = new Page();
		p.setRows(titleDao.getPageByType(typeId, (page - 1) * rows, rows));
		p.setTotal(titleDao.countByType(typeId));
		p.setPage(page);
		return p;
	}

	@Override
	public Title getTitleById(int titleId) {
		return (Title)titleDao.getById(titleId);
	}

	@Override
	public Page getPageByNameList(String titleName, int page, int rows) {
		Page p = new Page();
		p.setRows(titleDao.getPageByName(titleName, (page - 1) * rows, rows));
		p.setTotal(titleDao.countByName(titleName));
		p.setPage(page);
		return p;
	}

}
