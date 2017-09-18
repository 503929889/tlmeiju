package com.haoran.meiju.entity;

public class User{

	private Integer user_id;
	private String username;
	private String password;
	private String nickname;
	private String email;
	private String head_thumb;
	private String user_desc;
	private String mobile;
	public User() {
		super();
	}
	public User(Integer user_id, String username, String password, String nickname, String email, String head_thumb,
			String user_desc, String mobile) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.head_thumb = head_thumb;
		this.user_desc = user_desc;
		this.mobile = mobile;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", password=" + password + ", nickname="
				+ nickname + ", email=" + email + ", head_thumb=" + head_thumb + ", user_desc=" + user_desc
				+ ", mobile=" + mobile + "]";
	}
	
	

}