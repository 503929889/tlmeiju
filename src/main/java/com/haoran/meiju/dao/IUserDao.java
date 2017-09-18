package com.haoran.meiju.dao;

import com.haoran.meiju.entity.User;

public interface IUserDao extends ComDao{
	int countByUsernameAndPassword(String username,String password);
	int countByUsername(String username);
	int saveUser(User user);
	
}	
