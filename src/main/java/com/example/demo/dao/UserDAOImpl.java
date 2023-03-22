package com.example.demo.dao;

import java.io.File;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;

import jakarta.persistence.EntityManager;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<User> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<User> query = currentSession.createQuery("from User", User.class);
		List<User> list = query.getResultList();
		return list;
	}

	@Override
	public User get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		User userObj = currentSession.get(User.class, id);
		return userObj;
	}

	@Override
	public void save(User user) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(user);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		User userObj = currentSession.get(User.class, id);
		currentSession.delete(userObj);
		
	}

	@Override
	public boolean checkLogin(User inputUser) {
		Session currentSession = entityManager.unwrap(Session.class);
//		User user = currentSession.find(User.class, inputUser.getId());
		
		
//		find by username + password = hibernate
		
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        
        User userDB = (User)session.get(User.class, inputUser.getId());
        if(inputUser.getUsername().equals(userDB.getUsername()) && (inputUser.getPassword().equals(userDB.getPassword()))) {
        	 System.out.println("User Login Successfully !!!");
             return true;
        } else {
        	System.out.println("Incorrect Username or Password !!!");
        	return false;
        }
        	
		
		
		
//		if(user != null) {
//			return true;
//		}
//		return false;
		
	}
	
	

}
