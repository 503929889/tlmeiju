package com.haoran.meiju.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haoran.meiju.dao.IUserDao;
import com.haoran.meiju.dao.IUsersDao;
import com.haoran.meiju.entity.User;
import com.haoran.meiju.entity.Users;
import com.haoran.meiju.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private IUserDao userDao;
	
	@Autowired
	private IUsersDao usersDao;

	@Override
	public boolean login(String username, String password) {
		if (userDao.countByUsernameAndPassword(username, password) == 1)
			return true;
		return false;
	}

	@Override
	public int isExistUser(String username) {
		if(usersDao.cByNickName(username)==1)
			return 1;
		else if(usersDao.cByNickName(username)==0)
			return 0;
		if(userDao.countByUsername(username)==1)
			return 1;
		return 0;
	}

	@Override
	public int register(User user) {
		if(userDao.saveUser(user)==1)
			return 1;
		return 0;
	}

	@Override
	public int addUser(Users user) {
		try {
			if(usersDao.saveUser(user)==1)
				return 1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
		}
		return 0;
	}
}
