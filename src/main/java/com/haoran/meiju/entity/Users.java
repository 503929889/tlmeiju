package com.haoran.meiju.entity;

import java.util.Date;

public class Users {
	private Integer id;
	private String nickname;
	private String head_thumb;
	private String user_desc;
	private Date birthday;
	private String reg_ip;
	private Date reg_time;
	public Users(Integer id, String nickname, String head_thumb, String user_desc, Date birthday, String reg_ip,
			Date reg_time) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.head_thumb = head_thumb;
		this.user_desc = user_desc;
		this.birthday = birthday;
		this.reg_ip = reg_ip;
		this.reg_time = reg_time;
	}
	public String getReg_ip() {
		return reg_ip;
	}
	public void setReg_ip(String reg_ip) {
		this.reg_ip = reg_ip;
	}
	public Date getReg_time() {
		return reg_time;
	}
	public void setReg_time(Date reg_time) {
		this.reg_time = reg_time;
	}
	public Users() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getHead_thumb() {
		return head_thumb;
	}
	public void setHead_thumb(String head_thumb) {
		this.head_thumb = head_thumb;
	}
	public String getUser_desc() {
		return user_desc;
	}
	public void setUser_desc(String user_desc) {
		this.user_desc = user_desc;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", nickname=" + nickname + ", head_thumb=" + head_thumb + ", user_desc=" + user_desc
				+ ", birthday=" + birthday + ", reg_ip=" + reg_ip + ", reg_time=" + reg_time + "]";
	}
	
}
