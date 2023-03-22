package com.example.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Invoice;
import com.example.demo.model.User;

import jakarta.persistence.EntityManager;
@Repository
public class InvoiceDAOImpl implements InvoiceDAO {

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Invoice> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Invoice> query = currentSession.createQuery("from Invoice", Invoice.class);
		List<Invoice> list = query.getResultList();
		return list;
	}

	@Override
	public Invoice get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Invoice invoiceObj = currentSession.get(Invoice.class, id);
		return invoiceObj;
	}

	@Override
	public void save(Invoice invoice) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(invoice);
		
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Invoice invoiceObj = currentSession.get(Invoice.class, id);
		currentSession.delete(invoiceObj);
		
	}

}
