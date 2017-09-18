package com.haoran.meiju.model;

import java.util.List;


public class IndexContent {
	
	
	private List<Object> carousel_hotlist;
	private List<Object> hotTitle;
	private List<Object> hotType;
	
	public IndexContent(List<Object> carousel_hotlist, List<Object> hotTitle, List<Object> hotType) {
		super();
		this.carousel_hotlist = carousel_hotlist;
		this.hotTitle = hotTitle;
		this.hotType = hotType;
	}
	public IndexContent() {
		super();
	}
	public List<Object> getCarousel_hotlist() {
		return carousel_hotlist;
	}
	public void setCarousel_hotlist(List<Object> carousel_hotlist) {
		this.carousel_hotlist = carousel_hotlist;
	}
	public List<Object> getHotTitle() {
		return hotTitle;
	}
	public void setHotTitle(List<Object> hotTitle) {
		this.hotTitle = hotTitle;
	}
	public List<Object> getHotType() {
		return hotType;
	}
	public void setHotType(List<Object> hotType) {
		this.hotType = hotType;
	}
	
	@Override
	public String toString() {
		return "IndexContent [carousel_hotlist=" + carousel_hotlist + ", hotTitle=" + hotTitle + ", hotType=" + hotType
				+ "]";
	}
	
}
