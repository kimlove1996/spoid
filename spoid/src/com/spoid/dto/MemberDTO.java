package com.spoid.dto;

import java.util.Date;

public class MemberDTO {


	private String id;
	private String pwd;
	private String name;
	private String birth;
	private String phone;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String email;
	private Date date;
	private String new_pwd;

	public MemberDTO() {
		// TODO Auto-generated constructor stub
	
	}
	

	public MemberDTO(String id, String pwd, String name, String birth, String phone, String zipcode, String addr1,
			String addr2, String email, Date date, String new_pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.email = email;
		this.date = date;
		this.new_pwd = new_pwd;
	}


	public MemberDTO(String id, String pwd, String name, String birth, String phone, String zipcode, String addr1,
			String addr2, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.email = email;
	}


	public MemberDTO(String id, String pwd, String name, String birth, String phone, String zipcode, String addr1,
			String addr2, String email, Date date) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.email = email;
		this.date = date;
	}


	public MemberDTO(String id, String pwd) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.pwd = pwd;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public String getAddr1() {
		return addr1;
	}


	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}


	public String getAddr2() {
		return addr2;
	}


	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getNew_pwd() {
		return new_pwd;
	}


	public void setNew_pwd(String new_pwd) {
		this.new_pwd = new_pwd;
	}


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", phone=" + phone
				+ ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", email=" + email + ", date="
				+ date + "]";
	}
	

}
