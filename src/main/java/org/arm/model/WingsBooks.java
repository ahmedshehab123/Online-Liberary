package org.arm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="wings_book")
public class WingsBooks {
	@Id
	private int bookID;
	private String bookName;
	private String department;
	private int copyNo;
	private String generatedName;
	@Id
	@Column(name="id",nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	@Column(name="book_name",nullable=false)
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	@Column(name="department",nullable=false)
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Column(name="copy_no",nullable=true)
	public int getCopyNo() {
		return copyNo;
	}
	public void setCopyNo(int copyNo) {
		this.copyNo = copyNo;
	}
	@Column(name="generated_name",nullable=true)
	public String getGeneratedName() {
		return generatedName;
	}
	public void setGeneratedName(String generatedName) {
		this.generatedName = generatedName;
	}
	
}
