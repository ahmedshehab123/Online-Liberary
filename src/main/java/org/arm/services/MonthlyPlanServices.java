package org.arm.services;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.MonthlyPlan;
import org.arm.model.SupervisionPlan;
import org.arm.model.WorksPlan;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MonthlyPlanServices {

	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entityManger;
	
	public void saveMonthlyPlan(MonthlyPlan plan){
		entityManger.merge(plan);
	}
	
	@SuppressWarnings("unchecked")
	public List<MonthlyPlan> displayMonthlyPlan(){
		Query query=entityManger.createQuery("SELECT w from MonthlyPlan w ORDER BY w.planDate desc");
		List<MonthlyPlan> plan=query.getResultList();
		return plan;
	}
	@SuppressWarnings("unchecked")
	public List<MonthlyPlan> findMonthlyPlan(Date planDate){
		Query query=entityManger.createQuery("SELECT w  from MonthlyPlan w  WHERE w.planDate=:param ORDER BY w.planDate desc");
		query.setParameter("param",planDate);
		List<MonthlyPlan> plans=query.getResultList();
		return plans;
		
	}
}
