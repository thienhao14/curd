package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController extends BaseController {

	
	@RequestMapping("/client")
	public String index() {
         return "login";
	}
}
