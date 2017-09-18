package com.haoran.meiju.service;

import com.haoran.meiju.entity.UserAuth;

public interface UserAuthService {
	int isExistIdentifer(String type,String identifer);
	int addUserAuth(UserAuth userAuth);
}
