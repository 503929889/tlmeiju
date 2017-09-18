package com.haoran.meiju.entity;

public class UserAuth {
	private Integer id;
	private Users user;
	private String identity_type;
	private String identifer;
	private String credential;
	public UserAuth() {
		super();
	}
	@Override
	public String toString() {
		return "UserAuth [id=" + id + ", user=" + user + ", identity_type=" + identity_type + ", identifer=" + identifer
				+ ", credential=" + credential + "]";
	}
	public UserAuth(Integer id, Users user, String identity_type, String identifer, String credential) {
		super();
		this.id = id;
		this.user = user;
		this.identity_type = identity_type;
		this.identifer = identifer;
		this.credential = credential;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public String getIdentity_type() {
		return identity_type;
	}
	public void setIdentity_type(String identity_type) {
		this.identity_type = identity_type;
	}
	public String getIdentifer() {
		return identifer;
	}
	public void setIdentifer(String identifer) {
		this.identifer = identifer;
	}
	public String getCredential() {
		return credential;
	}
	public void setCredential(String credential) {
		this.credential = credential;
	}
	
	
}
