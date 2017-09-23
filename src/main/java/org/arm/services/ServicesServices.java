package org.arm.services;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;

import org.arm.model.Services;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ServicesServices {
	@PersistenceContext(type = PersistenceContextType.EXTENDED, unitName = "jpa")
	private EntityManager entityManager;

	public void saveServices(Services services){
		entityManager.merge(services);
	}
	@SuppressWarnings("unchecked")
	public List<Services> displayServices(){
		Query query=entityManager.createQuery("SELECT s FROM Services s");
		 List<Services> services=query.getResultList();
		 return services;
	}
	public BufferedImage resizeImage(BufferedImage originalImage, int type) {
		BufferedImage resizedImage = new BufferedImage(444, 343, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, 444, 343, null);
		g.dispose();
		return resizedImage;
	}

}
