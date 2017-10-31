package com.haoran.meiju.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.haoran.meiju.model.Page;
import com.haoran.meiju.service.ICarousel_hotlistService;
import com.haoran.meiju.service.IDownloadInformationService;
import com.haoran.meiju.service.IMessageService;
import com.haoran.meiju.service.MeijuService;
import com.haoran.meiju.service.PictureService;

@Controller
public class MeijuController {

	@Autowired
	private ICarousel_hotlistService carousel_hotlistService;

	@Autowired
	private IDownloadInformationService downloadInformationService;

//	@Autowired
//	private ITitleService titleService;

	@Autowired
	private IMessageService messageService;

	@Autowired
	private MeijuService meijuService;

	protected String[] color = { " #236DDC", " #0080FF", " #6FB7FF", "#86C2FF", " #CAE4FF", "", "", "", "", "", "", "",
			"", "", "", "", "", "", "", "", "", "", "", "" };

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
	@RequestMapping("/Home")
	public String toIndex(Model model) {
		model.addAttribute("chList", carousel_hotlistService.getCarouselList());
		model.addAttribute("hotList", meijuService.getHotList());
		model.addAttribute("diList", meijuService.getDownList(1, 9));
		model.addAttribute("color", color);
		model.addAttribute("thotList", meijuService.getHotListByType(0, 1, 14));
		model.addAttribute("tdiList", meijuService.getDownListByType(0, 1, 6));
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
	@RequestMapping("type/{typeId}")
	public String showType(@PathVariable("typeId") int typeId, Model model) {
		model.addAttribute("typeList", meijuService.getHotListByType(typeId, 1, 16));
		model.addAttribute("diList", meijuService.getDownListByType(typeId, 1, 20));
		model.addAttribute("color", color);
		return "type";
	}

	/**
	 * 
	 * 跳转至排行榜页面
	 * 
	 * @return String
	 * 
	 * @author 浩然哥
	 * 
	 * @Time ‎2017‎年‎8月‎28‎日
	 */
	@RequestMapping("list")
	public String showList(Model model) {
		model.addAttribute("list", meijuService.getDownListByType(0, 1, 12));
		model.addAttribute("color", color);
		return "list";
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
	@RequestMapping("detail/{id}")
	public String showDetail(@PathVariable("id") int titleId, Model model) {
		model.addAttribute("meiju", meijuService.getById(titleId));
		model.addAttribute("diList", downloadInformationService.getByTitleId(titleId));
		model.addAttribute("diListTimes", meijuService.getDownList(1, 20));
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
	public String showSearch(String titleName, Model model) {
		model.addAttribute("searchList", meijuService.getByName(titleName, 1, 16));
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
	public List<Object> moreType(int page, int rows, int typeId) {
		return meijuService.getHotListByType(typeId, page, rows);
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
	public Page msNext(int page, int rows, int titleId) {
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
	public List<Object> retSearch(String titleName, Model model) {
		return meijuService.getByName(titleName, 1, 16);
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
	@RequestMapping("/meijus/edit")
	public String edit() {
		return "admin/mg_MeijuList";
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
	@RequestMapping("/getMeijuPage")
	@ResponseBody
	public Page getMeijuPage(int page, int rows) {
		return meijuService.getPage(page, rows);
	}

	@Autowired
	private PictureService pictureService;

	@RequestMapping("/pic/upload")
	@ResponseBody
	public String pictureUpload(@RequestParam("myfile") CommonsMultipartFile myfile) {
		Map<String, Object> result = pictureService.uploadPicture(myfile,"image/mj");
		return (String) result.get("url");
	}
	
	@RequestMapping("/updatePic")
	@ResponseBody
	public String updatePic(@RequestParam("id")String id,@RequestParam("pic")String pic) {
		int i=meijuService.updatePic(pic, id);
		if(i==1)
			return "success";
		else
			return "fail";
	}
}
