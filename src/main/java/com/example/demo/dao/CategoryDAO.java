package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryDAO {
	List <Category> get();
	Category get(int id);
	void save(Category category);
	void delete(int id);
}
