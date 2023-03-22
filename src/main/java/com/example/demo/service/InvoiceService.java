package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Invoice;

public interface InvoiceService {
	List<Invoice> get();
	Invoice get(int id);
	void save(Invoice user);
	void delete(int id);
}
