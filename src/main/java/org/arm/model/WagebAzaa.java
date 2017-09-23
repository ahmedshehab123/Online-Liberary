package org.arm.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="wageb_azza")
public class WagebAzaa {
	private int id;
	private String title;
	private String content;
	private Date wagebDate;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="wageb_id",nullable=false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="title",nullable=false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="content",nullable=false)
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="wageb_date",insertable=false,nullable=false)
	public Date getwagebDate() {
		return wagebDate;
	}
	public void setwagebDate(Date wagebDate) {
		this.wagebDate = wagebDate;
	}
	

}
