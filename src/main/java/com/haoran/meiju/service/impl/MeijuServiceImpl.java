package com.haoran.meiju.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.ICarousel_hotlistDao;
import com.haoran.meiju.dao.IDownload_informationDao;
import com.haoran.meiju.dao.ITitleDao;
import com.haoran.meiju.model.IndexContent;
import com.haoran.meiju.service.MeijuService;

@Service("meijuService")
public class MeijuServiceImpl implements MeijuService {

	@Autowired
	private ITitleDao titleDao;

	@Autowired
	private ICarousel_hotlistDao carousel_hotlistDao;

	@Autowired
	private IDownload_informationDao download_informationDao;

	@Override
	public List<Object> getTitleAll() {
		return titleDao.getAll();
	}

	@Override
	public Object getTitleById(String id) {
		return titleDao.getById(10005);
	}

	@Override
	public List<Object> getPageByTypeSortDateDesc(int typeId, int page, int rows) {
		// return titleDao.getPageByTypeSortDateDesc("10000", (page-1)*rows,
		// rows);
		return download_informationDao.getPageByTypeSortTimesDesc(10000, page, rows);
	}

	@Override
	public List<Object> getCarouselAll() {
		return carousel_hotlistDao.getAll();
	}

	@Override
	public IndexContent showIndex() {
		IndexContent ic=new IndexContent();
		ic.setCarousel_hotlist(carousel_hotlistDao.getAll());
		List<Object> title=new ArrayList<Object>();
		title.add(titleDao.getPageSortDateDesc(1, 12));
		title.add(download_informationDao.getPageSortTimesDesc(1, 9));
		ic.setHotTitle(title);
		List<Object> type=new ArrayList<Object>();
		for(int i=1;i<3;i++){
			type.add(titleDao.getPageByTypeSortDateDesc(i*10000, 1, 14));
			type.add(download_informationDao.getPageByTypeSortTimesDesc(i*10000, 1, 6));
		}
		ic.setHotType(type);
		return ic;
	}

	// @Override
	// public List<Download_information> loadDlAllList() {
	// DownloadInformationDao did=new DownloadInformationDaoImpl();
	// return did.selectAllDistinct();
	// }
	//
	// @Override
	// public List<Download_information> loadDlAllListByType(int typeId) {
	// DownloadInformationDao did=new DownloadInformationDaoImpl();
	// return did.selectAllDistinctByType(typeId);
	// }
	//
	// @Override
	// public List<Carousel_hotlist> loadCHListAll() {
	// Carousel_hotlistDao chd=new Carousel_hotlistDaoImpl();
	// return chd.selectAll();
	// }
	//
	// @Override
	// public List<Title> loadHotList() {
	// TitleDao ttd=new TitleDaoImpl();
	// return ttd.selectAll();
	// }
	//
	// @Override
	// public List<Title> loadHotListByType(int typeId) {
	// TitleDao ttd=new TitleDaoImpl();
	// return ttd.selectByTypeID(typeId);
	// }
	//
	// @Override
	// public List<Title> loadTitleList(int typeId) {
	// TitleDao td=new TitleDaoImpl();
	// return td.selectByTypeID(typeId);
	// }
	//
	// @Override
	// public List<Download_information> loadList() {
	// DownloadInformationDao did=new DownloadInformationDaoImpl();
	// return did.selectAllOrderByTime();
	// }
	//
	// @Override
	// public Title loadTitle(int titleId) {
	// TitleDao td=new TitleDaoImpl();
	// return td.select(titleId);
	// }
	//
	// @Override
	// public List<Download_information> loadDiListByTitleId(int titleId) {
	// DownloadInformationDao did=new DownloadInformationDaoImpl();
	// return did.selectAllByTitleId(titleId);
	// }
	//
	// @Override
	// public List<Message> loadMsByTitleId(int titleId) {
	// MessageDao msd=new MessageDaoImpl();
	// return msd.selectAllByTitleId(titleId);
	// }
	//
	// @Override
	// public Content loadPlot(int titleId) {
	// ContentDao cd=new ContentDaoImpl();
	// return cd.selectByTitleId(titleId);
	// }
	//
	// @Override
	// public boolean addMessage(String user, int titleId, String content) {
	// Message ms=new Message();
	// ms.setUser(user);
	// ms.setTitleId(titleId);
	// ms.setContent(content);
	// ms.setSubmitTime(2016-12-12);
	// MessageDao md=new MessageDaoImpl();
	// Session session = HibernateSessionFactory.getSession();
	// Transaction tran = session.beginTransaction();
	// boolean flag=md.insert(ms);
	// tran.commit();
	// return flag;
	// }
	//
	// @Override
	// public List<Title> loadTitleList(String titleName) {
	// TitleDao td=new TitleDaoImpl();
	// return td.selectByTitleName(titleName);
	// }

}
