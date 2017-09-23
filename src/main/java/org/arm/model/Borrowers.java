package org.arm.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="borrowers")
public class Borrowers {
	private int id;
	private String studentName;
	private String studentNumber;
	private String department;
	private String bookName;
	private Date tasleemDate;
	private Date estlamDate;
	@Id
	@Column(name="id",nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="student_name",nullable=false)
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	@Column(name="student_no",nullable=false)
	public String getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}
	@Column(name="department",nullable=false)
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Column(name="book_name",nullable=false)
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	@Column(name="tasleem_date",nullable=false)
	public Date getTasleemDate() {
		return tasleemDate;
	}
	public void setTasleemDate(Date tasleemDate) {
		this.tasleemDate = tasleemDate;
	}
	@Column(name="estlam_date",nullable=false)
	public Date getEstlamDate() {
		return estlamDate;
	}
	public void setEstlamDate(Date estlamDate) {
		this.estlamDate = estlamDate;
	}
	
	

}
