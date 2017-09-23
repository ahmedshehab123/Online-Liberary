package org.arm.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;

import org.arm.model.AhmedOrabiBooks;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AhmedOrabiBookServices {

	@PersistenceContext(type = PersistenceContextType.EXTENDED, unitName = "jpa")
	private EntityManager entityManager;

	@Transactional
	public void saveAhmedOrabiBooks(AhmedOrabiBooks ahmedOrabiBooks) {

		entityManager.merge(ahmedOrabiBooks);

	}

	public List<AhmedOrabiBooks> displayAhmedOrabiBooks(String departmentName) {

		Query query = entityManager.createQuery("SELECT e FROM AhmedOrabiBooks e where e.department= :nameparam");
		query.setParameter("nameparam", departmentName);
		@SuppressWarnings("unchecked")
		List<AhmedOrabiBooks> ahmedOrabiBooks = query.getResultList();
		return ahmedOrabiBooks;
	}

	public List<AhmedOrabiBooks> ListAhmedOrabiBooks() {

		Query query = entityManager.createQuery("SELECT e FROM AhmedOrabiBooks e");
		@SuppressWarnings("unchecked")
		List<AhmedOrabiBooks> ahmedOrabiBooks = query.getResultList();
		return ahmedOrabiBooks;
	}

	public List<AhmedOrabiBooks> ListAhmedOrabiBooksByDepartmentName(String department) {

		Query query = entityManager.createQuery("SELECT e FROM AhmedOrabiBooks e where e.department= :nameparam");
		query.setParameter("nameparam", department);
		@SuppressWarnings("unchecked")
		List<AhmedOrabiBooks> ahmedOrabiBooks = query.getResultList();
		return ahmedOrabiBooks;
	}

	public AhmedOrabiBooks getBookInfo(String bookName) {

		Query query = entityManager.createQuery("SELECT e FROM AhmedOrabiBooks e where e.bookName= :nameparam");
		query.setParameter("nameparam", bookName);
		AhmedOrabiBooks ahmedOrabiBooks = (AhmedOrabiBooks) query.getSingleResult();
		return ahmedOrabiBooks;
	}

	public List<AhmedOrabiBooks> searchBook(String bookName) {

		Query query = entityManager.createQuery("SELECT b FROM AhmedOrabiBooks b WHERE b.bookName like :nameparam");
		query.setParameter("nameparam", "%" + bookName + "%");

		@SuppressWarnings("unchecked")
		List<AhmedOrabiBooks> ahmedOrabiBooks = query.getResultList();
		return ahmedOrabiBooks;
	}

	public AhmedOrabiBooks findBookById(int bookID) {
		Query query = entityManager.createQuery("SELECT b FROM AhmedOrabiBooks b WHERE b.bookID = :nameparam");
		query.setParameter("nameparam", bookID);
		AhmedOrabiBooks ahmedOrabiBooks = (AhmedOrabiBooks) query.getSingleResult();
		return ahmedOrabiBooks;
	}

	public void updateBook(AhmedOrabiBooks book) throws TransactionRequiredException{
		System.out.println("id from services" + book.getBookID());
		System.out.println("name from services" + book.getGeneratedName());
		Query query = entityManager
				.createQuery("UPDATE AhmedOrabiBooks b SET b.bookName=:bookParm , b.department=:departmentParam ,"
						+ "b.copyNo=:conpyParm ,b.generatedName=:generatedParam , b.generalNumber=:generalNumberparam ,b.writerName=:writerParam,"
						+ "b.publisherName=:publisherParam ,b.printerNumber=:printerNumberParam ,b.buyingDate=:buyingDateParam ,b.price=:priceparam"
						+ ",b.categoryNumber=:categoryNumberParam,b.publisherDate=:publisherDateParam WHERE b.bookID=:bookIDParam");
		query.setParameter("bookIDParam", book.getBookID());
		query.setParameter("bookParm", book.getBookName());
		query.setParameter("departmentParam", book.getDepartment());
		query.setParameter("conpyParm", book.getcopyNo());
		query.setParameter("generatedParam", book.getGeneratedName());
		query.setParameter("generalNumberparam", book.getGeneralNumber());
		query.setParameter("writerParam", book.getWriterName());
		query.setParameter("publisherParam", book.getPublisherDate());
		query.setParameter("printerNumberParam", book.getPrinterNumber());
		query.setParameter("buyingDateParam", book.getBuyingDate());
		query.setParameter("priceparam", book.getPrice());
		query.setParameter("categoryNumberParam", book.getCategoryNumber());
		query.setParameter("publisherDateParam", book.getPublisherDate());
		query.executeUpdate();
		
		

	}

}
