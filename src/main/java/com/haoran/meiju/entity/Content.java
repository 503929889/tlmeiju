package com.haoran.meiju.entity;


public class Content{

	// Fields

	private Integer contentId;
	private Integer titleId;
	private String plot;

	// Constructors

	/** default constructor */
	public Content() {
	}

	/** full constructor */
	public Content(Integer titleId, String plot) {
		this.titleId = titleId;
		this.plot = plot;
	}

	// Property accessors

	public Integer getContentId() {
		return this.contentId;
	}

	public void setContentId(Integer contentId) {
		this.contentId = contentId;
	}

	public Integer getTitleId() {
		return this.titleId;
	}

	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}

	public String getPlot() {
		return this.plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}
	@Override
	public String toString() {
		return "Content [contentId=" + contentId + ", titleId=" + titleId
				+ ", plot=" + plot + "]";
	}

}