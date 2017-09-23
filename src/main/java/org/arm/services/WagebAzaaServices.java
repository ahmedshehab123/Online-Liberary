package org.arm.services;


import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.arm.model.WagebAzaa;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class WagebAzaaServices {
	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entitymanger;
	
		public void saveWagebAzaa(WagebAzaa wageb){
			
			entitymanger.merge(wageb);
			
		}
		
		@SuppressWarnings("unchecked")
		public List<WagebAzaa> displayWageb(){
			Query query=entitymanger.createQuery("SELECT w FROM WagebAzaa w order by w.wagebDate desc");
			List<WagebAzaa> wageb=query.getResultList();
			return wageb;
			
		}
}
