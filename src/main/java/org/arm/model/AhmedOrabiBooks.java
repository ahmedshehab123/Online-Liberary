package org.arm.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ahmed_orabi_books")
public class AhmedOrabiBooks {
	private int bookID;
	//«”„ «·ﬂ «»
	private String bookName;
	//«”„ «·Ã‰«Õ
	private String department;
	//
	private int copyNo;
	private String generatedName;
	private int generalNumber;
	private String writerName;
	private String publisherName;
	private int printerNumber;
	private String buyingDate;
	private double price;
	private double categoryNumber;
	private String publisherDate;
	
	
	@Id
	@Column(name="id",nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	@Column(name="book_name",nullable=true)

	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	@Column(name="department",nullable=true)

	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Column(name="copy_no",nullable=true)

	public int getcopyNo() {
		return copyNo;
	}
	public void setcopyNo(int copyNo) {
		this.copyNo = copyNo;
	}
	@Column(name="generated_name",nullable=true)
	public String getGeneratedName() {
		return generatedName;
	}
	public void setGeneratedName(String generatedName) {
		this.generatedName = generatedName;
	}
	@Column(name="GENERAL_NO",nullable=true)
	public int getGeneralNumber() {
		return generalNumber;
	}
	public void setGeneralNumber(int generalNumber) {
		this.generalNumber = generalNumber;
	}
	@Column(name="WRITER_NAME",nullable=true)
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	@Column(name="PUPLISHER_NAME",nullable=true)
	public String getPublisherName() {
		return publisherName;
	}
	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}
	@Column(name="PRINTER_NO",nullable=true)
	public int getPrinterNumber() {
		return printerNumber;
	}
	public void setPrinterNumber(int printerNumber) {
		this.printerNumber = printerNumber;
	}
	@Column(name="BUYING_DATE",nullable=true)
	public String getBuyingDate() {
		return buyingDate;
	}
	public void setBuyingDate(String buyingDate) {
		this.buyingDate = buyingDate;
	}
	@Column(name="PRICE",nullable=true)
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Column(name="CATEGORY_NO",nullable=true)
	public double getCategoryNumber() {
		return categoryNumber;
	}
	public void setCategoryNumber(double categoryNumber) {
		this.categoryNumber = categoryNumber;
	}
	@Column(name="PUBLISHER_DATE",nullable=true)
	public String getPublisherDate() {
		return publisherDate;
	}
	public void setPublisherDate(String publisherDate) {
		this.publisherDate = publisherDate;
	}
	
	

}
