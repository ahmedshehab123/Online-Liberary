package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.arm.model.AhmedOrabiDepartment;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AhmedOrabiDepartmentServices {
	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManager;
	@Transactional
	public void saveAhmedOrabiDepartment(AhmedOrabiDepartment ahmedOrabiDepartment) {

		entityManager.merge(ahmedOrabiDepartment);

	} 
	@Transactional
	public List<AhmedOrabiDepartment> ListAhmedOrabiDepartment() {

		Query query = entityManager.createQuery("SELECT a FROM AhmedOrabiDepartment a");
		@SuppressWarnings("unchecked")
		List<AhmedOrabiDepartment> ahmedOrabiDepartment = query.getResultList();
		return ahmedOrabiDepartment;
	}
}
