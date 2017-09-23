package org.arm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Qualifier;

@Entity
@Table(name="departments")
@Qualifier("sessionFactory")

public class Departments {
	private int departmentID;
	private String departmentName;
	private String imageName;
	
	
	@Id
	@Column(name="department_id",nullable=false)
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getDepartmentID() {
		return departmentID;
	}
	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}

	@Column(name="department_name",nullable=false)
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	@Column(name="image_name",nullable=false)
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
