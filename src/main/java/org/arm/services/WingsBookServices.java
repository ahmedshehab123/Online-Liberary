package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.WingsBooks;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class WingsBookServices {
	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManager;

	@Transactional
	public void saveBook(WingsBooks book) {

		// sessionFactory.getCurrentSession().save(user);
		entityManager.merge(book);
		

	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<WingsBooks> displayBooks() {

		Query query = entityManager.createQuery("SELECT b FROM WingsBooks b");
		List<WingsBooks> books = query.getResultList();
		return books;
	}
	@Transactional
	public List<WingsBooks> displayBooksIndepartment(String departmentName) {

		Query query = entityManager.createQuery("SELECT b FROM WingsBooks b WHERE b.department= :nameparam");
		query.setParameter("nameparam", departmentName);

		@SuppressWarnings("unchecked")
		List<WingsBooks> books = query.getResultList();
		return books;
	}
	@Transactional
	public List<WingsBooks> searchBook(String bookName) {

		Query query = entityManager.createQuery("SELECT b FROM WingsBooks b WHERE b.bookName like :nameparam");
		query.setParameter("nameparam", "%"+bookName+"%");

		@SuppressWarnings("unchecked")
		List<WingsBooks> books = query.getResultList();
		return books;
	}

}
