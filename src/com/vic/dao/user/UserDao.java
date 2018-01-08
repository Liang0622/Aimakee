package com.vic.dao.user;

import com.vic.entity.User;

public interface UserDao {
	int addUser(User user);
	int delUser(int userId);
	int changeUser(User user);
	int findUserByName(String loginName);
	User findUser(String userName);
}
