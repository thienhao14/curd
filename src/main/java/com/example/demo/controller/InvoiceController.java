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

import com.example.demo.model.Invoice;
import com.example.demo.service.InvoiceService;

@RestController
@RequestMapping("/invoice")
public class InvoiceController {
	@Autowired
	private InvoiceService invoiceService;
	
	@PostMapping("")
	public Invoice save(@RequestBody Invoice invoiceObj) {
		invoiceService.save(invoiceObj);
		return invoiceObj;
	}
	
	@GetMapping("")
	public List<Invoice> get(){
		return invoiceService.get();
	}
	
	@GetMapping("/{id}")
	public Invoice get(@PathVariable int id) {
		Invoice invoiceObj = invoiceService.get(id);
		if(invoiceObj == null) {
			throw new RuntimeException("Invoice not found");
		} return invoiceObj;
	}
	
	@PutMapping("")
	public Invoice update(@RequestBody Invoice invoiceObj) {
		invoiceService.save(invoiceObj);
		return invoiceObj;
	}
	
	@DeleteMapping("/{id}")
	public String delete(@PathVariable int id) {
		invoiceService.delete(id);
		return "Invoice has been delete with id: " + id;
	}
	
	
	
	
	
	
}
