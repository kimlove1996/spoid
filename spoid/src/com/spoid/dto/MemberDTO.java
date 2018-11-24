package com.spoid.dto;

import java.util.Date;

public class MemberDTO {
	private String id;
	private String pw;
	private String rpw;
	private String nick;
	private String email;
	private String hint1;
	private String hint2;
	private Date regdate;
	
	
	public MemberDTO() {
		
	}
	
	// 로그인을 위한 DTO
	public MemberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	// 회원가입을 위한 DTO
	public MemberDTO(String id, String pw, String rpw, String nick, String email, String hint1, String hint2) {
		super();
		this.id = id;
		this.pw = pw;
		this.rpw = rpw;
		this.nick = nick;
		this.email = email;
		this.hint1 = hint1;
		this.hint2 = hint2;
	}
	
	// id를 통해 pw를 찾기위한 DTO
	public MemberDTO(String id, String hint1, String hint2) {
		super();
		this.id = id;
		this.hint1 = hint1;
		this.hint2 = hint2;
	}
	
	
	

	public MemberDTO(String id, String pw, String rpw, String nick, String email, String hint1, String hint2, Date regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.rpw = rpw;
		this.nick = nick;
		this.email = email;
		this.hint1 = hint1;
		this.hint2 = hint2;
		this.regdate = regdate;
	}



	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getRpw() {
		return rpw;
	}

	public void setRpw(String rpw) {
		this.rpw = rpw;
	}

	public String getNick() {
		return nick;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getHint1() {
		return hint1;
	}


	public void setHint1(String hint1) {
		this.hint1 = hint1;
	}


	public String getHint2() {
		return hint2;
	}


	public void setHint2(String hint2) {
		this.hint2 = hint2;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + ", nick=" + nick + ", email=" + email + ", hint1=" + hint1
				+ ", hint2=" + hint2 + ", regdate=" + regdate + "]";
	}
	
	
	
}
