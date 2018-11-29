package com.spoid.dto;

import java.util.Date;

public class OneCenterDTO {
	private String id;
	private String title;
	private String content;
	private Date regdate;
	
	public OneCenterDTO() {
		
	}
	public OneCenterDTO(String id, String title, String content, Date regdate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}
	
	public OneCenterDTO(String id, String title, String content) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "OneCenterDTO [id=" + id + ", title=" + title + ", content=" + content + ", regdate=" + regdate + "]";
	}
	
	
	
}
