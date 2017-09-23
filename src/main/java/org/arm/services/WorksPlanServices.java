package org.arm.services;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.WorksPlan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class WorksPlanServices {

	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManger;
	
	public void saveWorkPlan(WorksPlan worksPlan){
		entityManger.merge(worksPlan);
	}
	
	@SuppressWarnings("unchecked")
	public List<WorksPlan> displayWorksPlan(){
		Query query=entityManger.createQuery("SELECT w  from WorksPlan w ORDER BY w.planDate desc");
		List<WorksPlan> plan=query.getResultList();
		return plan;
	}
	@SuppressWarnings("unchecked")
	public List<WorksPlan> findPlan(Date planDate){
		Query query=entityManger.createQuery("SELECT w  from WorksPlan w  WHERE w.planDate=:param ORDER BY w.planDate desc");
		query.setParameter("param",planDate);
		List<WorksPlan> plans=query.getResultList();
		return plans;
		
	}
}
