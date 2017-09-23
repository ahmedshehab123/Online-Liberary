package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class StudentServices {
	@PersistenceContext(type = PersistenceContextType.EXTENDED, unitName = "jpa2")
	private EntityManager entityManager;
	
public String findStudentName(int studentNumber){
		Query query=entityManager.createQuery("SELECT s.studentName FROM Student s WHERE s.studentNumber =:numparam");
		query.setParameter("numparam", studentNumber);
		String names=(String) query.getSingleResult();
		return names;
	}

}
