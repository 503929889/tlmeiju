package com.haoran.meiju.entity;

/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager {

	// Fields

	private String managerName;
	private String password;
	private Integer type;

	// Constructors

	/** default constructor */
	public Manager() {
	}

	/** full constructor */
	public Manager(String password, Integer type) {
		this.password = password;
		this.type = type;
	}

	// Property accessors

	public String getManagerName() {
		return this.managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Manager [managerName=" + managerName + ", password=" + password
				+ ", type=" + type + "]";
	}
	
	

}