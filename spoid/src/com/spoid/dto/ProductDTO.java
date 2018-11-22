package com.spoid.dto;

import java.util.Date;

public class ProductDTO
{
	  private String p_code;
	  private String p_name;
	  private int p_price;
	  private int p_discount;
	  private int purchasecnt;
	  private int p_goodcnt;
	  private String p_img;
	  private Date p_indate;
	  
	  public ProductDTO() {}

	  public ProductDTO(String p_code, String p_name, int p_price, int p_discount, int purchasecnt, int p_goodcnt,
			String p_img, Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_discount = p_discount;
		this.purchasecnt = purchasecnt;
		this.p_goodcnt = p_goodcnt;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}

	public ProductDTO(String p_name, int p_price, int p_discount, int purchasecnt, int p_goodcnt, String p_img,
			Date p_indate) {
		super();
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_discount = p_discount;
		this.purchasecnt = purchasecnt;
		this.p_goodcnt = p_goodcnt;
		this.p_img = p_img;
		this.p_indate = p_indate;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_discount() {
		return p_discount;
	}

	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}

	public int getPurchasecnt() {
		return purchasecnt;
	}

	public void setPurchasecnt(int purchasecnt) {
		this.purchasecnt = purchasecnt;
	}

	public int getP_goodcnt() {
		return p_goodcnt;
	}

	public void setP_goodcnt(int p_goodcnt) {
		this.p_goodcnt = p_goodcnt;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public Date getP_indate() {
		return p_indate;
	}

	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}
	  
	  
}

