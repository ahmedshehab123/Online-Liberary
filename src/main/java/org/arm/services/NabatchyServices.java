package org.arm.services;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.arm.model.Nabatchy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class NabatchyServices {

	@PersistenceContext(type = PersistenceContextType.EXTENDED, unitName = "jpa")
	private EntityManager entityManager;

	@Transactional
	public void saveNabatchy(Nabatchy nabatchy) {
		entityManager.merge(nabatchy);

	}

	@SuppressWarnings("unchecked")
	public List<String> displayNabatchy() {
		Query query = entityManager.createQuery("SELECT n.picturePath FROM Nabatchy n");
		List<String> nabatchy = query.getResultList();
		return nabatchy;
	}

	public String checkIfExist(String picturePath) {

		Query query = entityManager.createQuery("SELECT n.picturePath FROM Nabatchy n where n.picturePath=:param");
		query.setParameter("param", picturePath);
		String nabatchy =  (String) query.getSingleResult();
		return nabatchy;
	}

	

	public BufferedImage resizeImage(BufferedImage originalImage, int type) {
		BufferedImage resizedImage = new BufferedImage(1920, 932, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, 1920, 932, null);
		g.dispose();
		return resizedImage;
	}
}
