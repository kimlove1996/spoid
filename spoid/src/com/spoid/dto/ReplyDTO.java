package com.spoid.dto;

import java.util.Date;

public class ReplyDTO {
	private int rno;
	private String content;
	private String writer;
	private Date regdate;
	private String bno;
	
	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public ReplyDTO(String content, String writer, String bno) {
		super();
		this.content = content;
		this.writer = writer;
		this.bno = bno;
	}

	public ReplyDTO(int rno, String content, String writer, Date regdate, String bno) {
		super();
		this.rno = rno;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.bno = bno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}
	
}
