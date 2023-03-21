package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.User;
import com.example.demo.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@PostMapping("")
	public User save(@RequestBody User userObj) {
		userService.save(userObj);
		return userObj;
	}
	
	@PostMapping("/login")
	public boolean login(@RequestBody User userObj) {
		return userService.checkLogin(userObj);
		
	}
	
	
	@GetMapping("")
	public List<User> get(){
		return userService.get();
	}
	
	@GetMapping("/{id}")
	public User get(@PathVariable int id){
		System.out.print("id = " + id);
		User userObj = userService.get(id);
		
		if(userObj == null) {
			throw new RuntimeException("User not found");
		}
		return userObj;
	}
	
	@PutMapping("")
	public User update(@RequestBody User userObj) {
		userService.save(userObj);
		return userObj;
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable int id) {
		userService.delete(id);
		return "User has been delete with id: " + id;
	}
	
	
}
