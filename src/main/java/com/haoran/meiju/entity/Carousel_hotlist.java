package com.haoran.meiju.entity;


public class Carousel_hotlist implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private Integer titleId;
	private String titleName;
	private String summary;
	private String picture;
	public Carousel_hotlist() {
		super();
	}
	public Carousel_hotlist(Integer id, Integer titleId, String titleName, String summary, String picture) {
		super();
		this.id = id;
		this.titleId = titleId;
		this.titleName = titleName;
		this.summary = summary;
		this.picture = picture;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTitleId() {
		return titleId;
	}
	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Carousel_hotlist [id=" + id + ", titleId=" + titleId + ", titleName=" + titleName + ", summary="
				+ summary + ", picture=" + picture + "]";
	}

}