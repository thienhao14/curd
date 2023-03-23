package com.example.demo.service;

import java.util.List;

import com.example.demo.model.User;

public interface UserService {
	List<User> get();
	User get(int id);
	void save(User user);
	void delete(int id);
	boolean checkLogin(User userObj);
	boolean checkSignup(User userObj);
}
