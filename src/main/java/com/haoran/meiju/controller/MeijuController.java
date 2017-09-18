package com.haoran.meiju.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haoran.meiju.model.Page;
import com.haoran.meiju.service.ICarousel_hotlistService;
import com.haoran.meiju.service.IContentService;
import com.haoran.meiju.service.IDownloadInformationService;
import com.haoran.meiju.service.IMessageService;
import com.haoran.meiju.service.ITitleService;

@Controller
public class MeijuController {

	@Autowired
	private ICarousel_hotlistService carousel_hotlistService;
	
	@Autowired
	private IDownloadInformationService downloadInformationService;
	
	@Autowired
	private ITitleService titleService;
	
	@Autowired
	private IContentService contentService;
	
	@Autowired
	private IMessageService messageService;
	
	protected String[] color = { " #236DDC", " #0080FF", " #6FB7FF", "#86C2FF",
			" #CAE4FF", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
			"", "", "", "", "" };
	
	/**
	 * 
	 * 跳转至主页
	 * 
	 * @return String
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/tlmeiju")
	public String toIndex(Model model){
		model.addAttribute("chList", carousel_hotlistService.getCarouselList());
		model.addAttribute("hotList", titleService.getRecentlyHitList(1,12));
		model.addAttribute("diList", titleService.getTotalRankList(1,9));
		model.addAttribute("color", color);
		model.addAttribute("thotList",titleService.getByTypeHitList(1,14));
		model.addAttribute("tdiList",titleService.getByTypeRankList(0,1,6));
		return "index";
	}
	
	/**
	 * 
	 * 跳转至分类展示页面
	 * 
	 * @return String
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/type_show")
	public String showType(int typeId,Model model){
		model.addAttribute("typeList", titleService.getPageByTypeList(typeId, 1, 16));
		model.addAttribute("diList", titleService.getByTypeRankList(typeId,1,20));
		model.addAttribute("color", color);
		return "type";
	}
	
	/**
	 * 
	 * 跳转至详细页面
	 * 
	 * @return String
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/detail_show")
	public String showDetail(int titleId,Model model){
		model.addAttribute("detailtitle",titleService.getTitleById(titleId));
		model.addAttribute("plot",contentService.getByTitleId(titleId));
		model.addAttribute("diList", downloadInformationService.getByTitleId(titleId));
		model.addAttribute("diListTimes", titleService.getTotalRankList(1, 20));
		model.addAttribute("msList", messageService.getPageByTitleList(titleId, 1, 12));
		model.addAttribute("color", color);
		return "details";
	}
	
	/**
	 * 
	 * 跳转至搜索后的展示页面
	 * 
	 * @return String
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/search_show")
	public String showSearch(String titleName,Model model){
		model.addAttribute("searchList", titleService.getPageByNameList(titleName, 1, 20));
		return "search";
	}
	
	/**
	 * 
	 * 分类展示页面下拉到底加载更多美剧信息
	 * 
	 * @return Page
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/loadMore")
	@ResponseBody
	public Page moreType(int page,int rows,int typeId){
		return titleService.getPageByTypeList(typeId, page, rows);
	}
	
	/**
	 * 
	 * 留言换页显示
	 * 
	 * @return Page
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/msNext")
	@ResponseBody
	public Page msNext(int page,int rows,int titleId){
		return messageService.getPageByTitleList(titleId, page, rows);
	}
	
	/**
	 * 
	 * 异步搜索美剧，返回数据
	 * 
	 * @return Page
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("/search_meiju")
	@ResponseBody
	public Page retSearch(String titleName,Model model){
		return titleService.getPageByNameList(titleName, 1, 20);
	}
	
	
}
