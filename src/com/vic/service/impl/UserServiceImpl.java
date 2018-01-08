package com.vic.service.impl;

import java.util.List;

import com.vic.dao.user.UserDao;
import com.vic.dao.user.impl.UserDaoImpl;
import com.vic.entity.User;
import com.vic.service.UserService;

public class UserServiceImpl implements UserService {
	
	UserDao udi=new UserDaoImpl();
	@Override
	public boolean addUser(User user) {
		if(udi.addUser(user)>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean changeUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User userLoing(String userName) {
		return udi.findUser(userName);
	}

	@Override
	public boolean userNameOk(String userName) {
		int num;
		if((num=udi.findUserByName(userName))>0) {
			return false;
		}
		return true;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
