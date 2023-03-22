package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.InvoiceDAO;
import com.example.demo.model.Invoice;

@Service
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private InvoiceDAO invoiceDAO;
	
	@Transactional
	@Override
	public List<Invoice> get() {
		return invoiceDAO.get();
	}

	@Transactional
	@Override
	public Invoice get(int id) {
		return invoiceDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Invoice invoice) {
		invoiceDAO.save(invoice);
		
	}

	@Transactional
	@Override
	public void delete(int id) {
		invoiceDAO.delete(id);
		
	}

}
