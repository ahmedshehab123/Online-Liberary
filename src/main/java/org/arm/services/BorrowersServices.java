package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.AhmedOrabiDepartment;
import org.arm.model.Borrowers;
import org.arm.model.Departments;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BorrowersServices {

	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManager;
	@Transactional
	public Borrowers saveBorrowers(Borrowers borrower) {

		borrower=entityManager.merge(borrower);
		return borrower;
	} 
	@Transactional
	public List<Borrowers> displayBorrowers() {

		Query query = entityManager.createQuery("SELECT b FROM Borrowers b");
		@SuppressWarnings("unchecked")
		List<Borrowers> borrowers = query.getResultList();
		return borrowers;
	}
}
