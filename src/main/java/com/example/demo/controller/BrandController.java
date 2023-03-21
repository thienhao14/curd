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
import com.example.demo.service.BrandService;

@RestController
@RequestMapping("/api")
public class BrandController {
	
	@Autowired
	private BrandService brandService;
	
	@PostMapping("/brand")
	public Brand save(@RequestBody Brand brandObj) {
		brandService.save(brandObj);
		return brandObj;
	}
	
	@GetMapping("/brand")
	public List<Brand> get(){
		return brandService.get();
	}
	
	@GetMapping("brand/{id}")
	public Brand get (@PathVariable int id) {
		Brand brandObj = brandService.get(id);
		if(brandObj == null) {
			throw new RuntimeException("Brand not found");
		} return brandObj;
	}
	
	@PutMapping("/brand")
	public Brand update(@RequestBody Brand brandObj) {
		brandService.save(brandObj);
		return brandObj;
	}
	
	@DeleteMapping("/brand/{id}")
	public String delete(@PathVariable int id) {
		brandService.delete(id);
		return "Brand has been delete with id: " + id;
		
	}
}
