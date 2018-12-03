package com.spoid.dto;

import java.util.Date;

public class BoardDTO {
	private int bno;
	private String category;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
	private int replycnt;
	private int goodcnt;
	private String filename;
	private int filesize;
	private int flag;
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}

	
	




	public BoardDTO(String title, String content, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	

	public BoardDTO(int bno, String category, String title, String content, String writer, String filename,
			int filesize) {
		super();
		this.bno = bno;
		this.category = category;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.filename = filename;
		this.filesize = filesize;
	}







	public BoardDTO(String title, String content, String writer, String filename, int filesize) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.filename = filename;
		this.filesize = filesize;
	}
	public BoardDTO(int bno, String title, String content, String writer, String filename, int filesize) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.filename = filename;
		this.filesize = filesize;
	}

	public BoardDTO(int bno, String title, String content, String writer, Date regdate, int viewcnt, int replycnt,
			int goodcnt, String filename, int filesize) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
		this.replycnt = replycnt;
		this.goodcnt = goodcnt;
		this.filename = filename;
		this.filesize = filesize;
	}







	public BoardDTO(int bno, String category, String title, String content, String writer, Date regdate, int viewcnt,
			int replycnt, int goodcnt, String filename, int filesize, int flag) {
		super();
		this.bno = bno;
		this.category = category;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
		this.replycnt = replycnt;
		this.goodcnt = goodcnt;
		this.filename = filename;
		this.filesize = filesize;
		this.flag = flag;
	}







	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	public int getGoodcnt() {
		return goodcnt;
	}
	public void setGoodcnt(int goodcnt) {
		this.goodcnt = goodcnt;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}



	public int getFlag() {
		return flag;
	}



	public void setFlag(int flag) {
		this.flag = flag;
	}







	public String getCategory() {
		return category;
	}







	public void setCategory(String category) {
		this.category = category;
	}

	
}
