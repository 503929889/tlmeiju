package com.haoran.meiju.service;

import com.haoran.meiju.entity.User;
import com.haoran.meiju.entity.Users;

public interface UserService {
	public boolean login(String username,String password);
	public int isExistUser(String username);
	public int register(User user);
	
	
	int addUser(Users user);
	
}
