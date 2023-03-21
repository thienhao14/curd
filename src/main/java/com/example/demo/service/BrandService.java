package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Brand;


public interface BrandService {
	List<Brand> get();
	Brand get(int id);
	void save(Brand brand);
	void delete(int id);
}
