package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hao")
public class TestController {
	@GetMapping("/abc")
	public String getName() {
		return "hahaha";
	}
}
