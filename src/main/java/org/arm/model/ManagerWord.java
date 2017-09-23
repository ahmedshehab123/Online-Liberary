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
@Table(name="word_manager")
public class ManagerWord {
	private int id;
	private String title;
	private String content;
	private String picturePath;
	private Date wordDate;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="word_id",nullable=false)
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
	@Column(name="picture_path",nullable=false)
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="word_date",insertable=false,nullable=false)
	public Date getWordDate() {
		return wordDate;
	}
	public void setWordDate(Date wordDate) {
		this.wordDate = wordDate;
	}
	

}
