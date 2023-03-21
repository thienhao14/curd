package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Brand;


public interface BrandDAO {
	List<Brand> get();
	Brand get(int id);
	void save(Brand brand);
	void delete(int id);
}
