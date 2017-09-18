package com.haoran.meiju.entity;

import java.util.Date;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message{

	// Fields

	private Integer messageId;
	private Integer titleId;
	private String user;
	private Date submitTime;
	private String content;

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(Integer titleId, String user, Date submitTime,
			String content) {
		this.titleId = titleId;
		this.user = user;
		this.submitTime = submitTime;
		this.content = content;
	}

	// Property accessors

	public Integer getMessageId() {
		return this.messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}

	public Integer getTitleId() {
		return this.titleId;
	}

	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Date getSubmitTime() {
		return this.submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", titleId=" + titleId
				+ ", user=" + user + ", submitTime=" + submitTime
				+ ", content=" + content + "]";
	}
	
	

}