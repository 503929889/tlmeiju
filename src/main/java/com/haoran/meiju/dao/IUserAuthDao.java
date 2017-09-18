package com.haoran.meiju.dao;

import com.haoran.meiju.entity.UserAuth;

public interface IUserAuthDao extends ComDao{
	int cByTypeAndIdentifer(String type,String identifer);
	int saveUserAuth(UserAuth userAuth);
}	
