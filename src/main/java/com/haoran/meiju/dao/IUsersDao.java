package com.haoran.meiju.dao;

import com.haoran.meiju.entity.Users;

public interface IUsersDao extends ComDao{
	int cByNickName(String nickname);
	int saveUser(Users user);
	int findIdByName(String nickname);
}	
