package com.haoran.meiju.entity;

import java.util.Date;

public class Title{
	private Integer titleId;
	private Type type;
	private String titleName;
	private String englishName;
	private String alias;
	private String status;
	private String picture;
	private String director;
	private String writer;
	private String star;
	private String area;
	private Date premiereDate;
	private Integer episodeNumber;
	private Integer tvLength;
	private String imdb;
	private Integer downloadTimes;
	public Title() {
		super();
	}
	public Integer getDownloadTimes() {
		return downloadTimes;
	}
	public void setDownloadTimes(Integer downloadTimes) {
		this.downloadTimes = downloadTimes;
	}
	public Title(Integer titleId, Type type, String titleName, String englishName, String alias, String status,
			String picture, String director, String writer, String star, String area, Date premiereDate,
			Integer episodeNumber, Integer tvLength, String imdb) {
		super();
		this.titleId = titleId;
		this.type = type;
		this.titleName = titleName;
		this.englishName = englishName;
		this.alias = alias;
		this.status = status;
		this.picture = picture;
		this.director = director;
		this.writer = writer;
		this.star = star;
		this.area = area;
		this.premiereDate = premiereDate;
		this.episodeNumber = episodeNumber;
		this.tvLength = tvLength;
		this.imdb = imdb;
	}
	public Integer getTitleId() {
		return titleId;
	}
	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	public String getEnglishName() {
		return englishName;
	}
	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getPremiereDate() {
		return premiereDate;
	}
	public void setPremiereDate(Date premiereDate) {
		this.premiereDate = premiereDate;
	}
	public Integer getEpisodeNumber() {
		return episodeNumber;
	}
	public void setEpisodeNumber(Integer episodeNumber) {
		this.episodeNumber = episodeNumber;
	}
	public Integer getTvLength() {
		return tvLength;
	}
	public void setTvLength(Integer tvLength) {
		this.tvLength = tvLength;
	}
	public String getImdb() {
		return imdb;
	}
	public void setImdb(String imdb) {
		this.imdb = imdb;
	}
	@Override
	public String toString() {
		return "Title [titleId=" + titleId + ", type=" + type + ", titleName=" + titleName + ", englishName="
				+ englishName + ", alias=" + alias + ", status=" + status + ", picture=" + picture + ", director="
				+ director + ", writer=" + writer + ", star=" + star + ", area=" + area + ", premiereDate="
				+ premiereDate + ", episodeNumber=" + episodeNumber + ", tvLength=" + tvLength + ", imdb=" + imdb
				+ ", downloadTimes=" + downloadTimes + "]";
	}
	
	
}