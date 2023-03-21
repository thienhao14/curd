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

import com.example.demo.model.Brand;
import com.example.demo.model.Category;
import com.example.demo.service.CategoryService;

@RestController
@RequestMapping("/curd")
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@PostMapping("/category")
	public Category save(@RequestBody Category categoryObj) {
		categoryService.save(categoryObj);
		return categoryObj;
	}
	
	@GetMapping("/category")
	public List<Category> get(){
		return categoryService.get();
	}
	
	@GetMapping("category/{id}")
	public Category get (@PathVariable int id) {
		Category categoryObj = categoryService.get(id);
		if(categoryObj == null) {
			throw new RuntimeException("Category not found");
		} return categoryObj;
	}
	
	@PutMapping("/category")
	public Category update(@RequestBody Category categoryObj) {
		categoryService.save(categoryObj);
		return categoryObj;
	}
	
	@DeleteMapping("/category/{id}")
	public String delete(@PathVariable int id) {categoryService.delete(id);
		return "Category has been delete with id: " + id;
		
	}
}
