package com.example.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Category;

import jakarta.persistence.EntityManager;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private EntityManager entityManager;
	@Override
	public List<Category> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Category> query = currentSession.createQuery("from Category", Category.class);
		List<Category> list = query.getResultList();
		return list;
	}

	@Override
	public Category get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Category categoryObj = currentSession.get(Category.class, id);
		return categoryObj;
	}

	@Override
	public void save(Category category) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(category);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Category categoryObj = currentSession.get(Category.class, id);
		currentSession.delete(categoryObj);
	}
	
}
