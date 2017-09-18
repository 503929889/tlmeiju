package com.haoran.meiju.dao;

import java.util.List;

public interface ComDao {
	Object getById(int id);
	Object getByName(String name);
	List<Object> getAll();
	List<Object> getPage(int page, int rows);
	int countAll();
	int deleteById(int id);
	
}
