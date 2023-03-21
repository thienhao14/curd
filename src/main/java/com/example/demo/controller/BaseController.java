package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.CategoryService;

import jakarta.annotation.PostConstruct;

@Controller
public class BaseController {
    @Autowired
    CategoryService categoryService;
    public ModelAndView _mvShareView = new ModelAndView();
//
//    @PostConstruct
//    public ModelAndView init(){
//    _mvShareView.addObject("listCategory", categoryService.getListCategory());
//    return _mvShareView;
//    }
	
}
