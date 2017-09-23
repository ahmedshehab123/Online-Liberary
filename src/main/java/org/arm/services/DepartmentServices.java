package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.arm.model.Departments;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DepartmentServices {
	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManager;
	@Transactional
	public void saveDepartment(Departments department) {

		entityManager.merge(department);

	}

	@Transactional
	public List<Departments> displayDepartments() {

		Query query = entityManager.createQuery("SELECT d FROM Departments d");
		@SuppressWarnings("unchecked")
		List<Departments> departments = query.getResultList();
		return departments;
	}

}
