package com.haoran.meiju.entity;
import java.util.List;

public class Type{

	private Integer typeId;
	private String typeName;
	private List<Title> titles;
	public Type() {
		super();
	}
	public Type(Integer typeId, String typeName, List<Title> titles) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.titles = titles;
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public List<Title> getTitles() {
		return titles;
	}
	public void setTitles(List<Title> titles) {
		this.titles = titles;
	}
	@Override
	public String toString() {
		return "Type [typeId=" + typeId + ", typeName=" + typeName + ", titles=" + titles + "]";
	}

	
	
}