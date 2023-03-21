package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.BrandDAO;
import com.example.demo.model.Brand;

@Service
public class BrandServiceImpl implements BrandService {

	@Autowired
	private BrandDAO brandDAO;
	
	@Transactional
	@Override
	public List<Brand> get() {
		return brandDAO.get();
	}
	
	@Transactional
	@Override
	public Brand get(int id) {
		return brandDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Brand brand) {
		brandDAO.save(brand);
	}

	@Transactional
	@Override
	public void delete(int id) {
		brandDAO.delete(id);
	}
	
}
