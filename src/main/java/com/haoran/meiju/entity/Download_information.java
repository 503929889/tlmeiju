package com.haoran.meiju.entity;

import java.util.Date;

public class Download_information implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields

	private Integer id;
	private Integer titleId;
	private String titleName;
	private Integer part;
	private Date updateTime;
	private Integer downloadTimes;
	private String downloadAddress;
	private String downloadName;
	private Integer typeId;
	public Download_information() {
		super();
	}
	public Download_information(Integer id, Integer titleId, String titleName, Integer part, Date updateTime,
			Integer downloadTimes, String downloadAddress, String downloadName, Integer typeId) {
		super();
		this.id = id;
		this.titleId = titleId;
		this.titleName = titleName;
		this.part = part;
		this.updateTime = updateTime;
		this.downloadTimes = downloadTimes;
		this.downloadAddress = downloadAddress;
		this.downloadName = downloadName;
		this.typeId = typeId;
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
	public Integer getPart() {
		return part;
	}
	public void setPart(Integer part) {
		this.part = part;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getDownloadTimes() {
		return downloadTimes;
	}
	public void setDownloadTimes(Integer downloadTimes) {
		this.downloadTimes = downloadTimes;
	}
	public String getDownloadAddress() {
		return downloadAddress;
	}
	public void setDownloadAddress(String downloadAddress) {
		this.downloadAddress = downloadAddress;
	}
	public String getDownloadName() {
		return downloadName;
	}
	public void setDownloadName(String downloadName) {
		this.downloadName = downloadName;
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Download_information [id=" + id + ", titleId=" + titleId + ", titleName=" + titleName + ", part=" + part
				+ ", updateTime=" + updateTime + ", downloadTimes=" + downloadTimes + ", downloadAddress="
				+ downloadAddress + ", downloadName=" + downloadName + ", typeId=" + typeId + "]";
	}

	
}