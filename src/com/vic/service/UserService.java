package com.vic.service;

import java.util.List;

import com.vic.entity.User;

public interface UserService {
	boolean addUser(User user);
	boolean delUser(User user);
	boolean changeUser(User user);
	User userLoing(String userName);
	boolean userNameOk(String userName);
	List<User> findAll();
}
