package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.UserDAO;
import com.example.demo.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Transactional
	@Override
	public List<User> get() {
		return userDAO.get();
	}

	@Transactional
	@Override
	public User get(int id) {
		return userDAO.get(id);
	}

	@Transactional
	@Override
	public void save(User user) {
		userDAO.save(user);
		
	}

	@Transactional
	@Override
	public void delete(int id) {
		userDAO.delete(id);
		
	}

	@Override
	public boolean checkLogin(User userObj) {
		return userDAO.checkLogin(userObj);
		
	}
	
	@Override
	public boolean checkSignup(User userObj) {
		return userDAO.checkSignup(userObj);
	}

}
