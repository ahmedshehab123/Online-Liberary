package org.arm.services;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.arm.model.SupervisionPlan;
import org.arm.model.WorksPlan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SupervisionPlanServices {

	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManger;
	
	public void saveSupervisionPlan(SupervisionPlan plan){
		entityManger.merge(plan);
	}
	
	@SuppressWarnings("unchecked")
	public List<SupervisionPlan> displaySupervision(){
		Query query=entityManger.createQuery("SELECT w from SupervisionPlan w ORDER BY w.planDate desc");
		List<SupervisionPlan> plan=query.getResultList();
		return plan;
	}
	@SuppressWarnings("unchecked")
	public List<SupervisionPlan> findSupervisionPlan(Date planDate){
		Query query=entityManger.createQuery("SELECT w  from SupervisionPlan w  WHERE w.planDate=:param ORDER BY w.planDate desc");
		query.setParameter("param",planDate);
		List<SupervisionPlan> plans=query.getResultList();
		return plans;
		
	}
}
