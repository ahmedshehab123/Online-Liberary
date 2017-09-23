package org.arm.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.Admin;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServices {

	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManager;
	public Admin login(String userName,String password){
		Admin admin=new Admin();
		Query query=entityManager.createQuery("SELECT a FROM Admin a WHERE a.userName=:param1 and a.password=:param2");
		query.setParameter("param1",userName);
		query.setParameter("param2",password);
		admin=(Admin) query.getSingleResult();
		return admin;
	}
	
}
