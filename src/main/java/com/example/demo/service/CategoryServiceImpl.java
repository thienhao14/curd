package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.CategoryDAO;
import com.example.demo.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Transactional
	@Override
	public List<Category> get() {
		return categoryDAO.get();
	}

	@Transactional
	@Override
	public Category get(int id) {
		return categoryDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Category category) {
		categoryDAO.save(category);
		
	}

	@Transactional
	@Override
	public void delete(int id) {
		categoryDAO.delete(id);
	}

}
