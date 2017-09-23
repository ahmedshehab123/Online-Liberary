package org.arm.services;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.ManagerWord;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ManagerWordServices {
	@PersistenceContext(type=PersistenceContextType.EXTENDED,unitName="jpa")
	private EntityManager entitymanger;
	
		public void saveMangerWord(ManagerWord managerWord){
			
			entitymanger.merge(managerWord);
			
		}
		
		@SuppressWarnings("unchecked")
		public List<ManagerWord> displaymanagerWord(){
			Query query=entitymanger.createQuery("SELECT m FROM ManagerWord m ORDER BY m.wordDate desc");
			List<ManagerWord> word=query.getResultList();
			return word;
			
		}
		public BufferedImage resizeImage(BufferedImage originalImage, int type) {
			BufferedImage resizedImage = new BufferedImage(444, 343, type);
			Graphics2D g = resizedImage.createGraphics();
			g.drawImage(originalImage, 0, 0, 444, 343, null);
			g.dispose();
			return resizedImage;
		}
		
	
}
