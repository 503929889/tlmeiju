package com.haoran.meiju.model;

import java.util.List;

public class Page {
	private List<Object> rows;
	private Integer total;
	private Integer page;
	public List<Object> getRows() {
		return rows;
	}
	@Override
	public String toString() {
		return "Page [rows=" + rows + ", total=" + total + ", page=" + page + "]";
	}
	public void setRows(List<Object> rows) {
		this.rows = rows;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Page() {
		super();
	}
	public Page(List<Object> rows, Integer total, Integer page) {
		super();
		this.rows = rows;
		this.total = total;
		this.page = page;
	}
}
