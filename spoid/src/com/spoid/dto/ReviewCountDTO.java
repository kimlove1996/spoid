package com.spoid.dto;

public class ReviewCountDTO {
	private int score;
	private int total;
	
	public ReviewCountDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public ReviewCountDTO(int score, int total) {
		super();
		this.score = score;
		this.total = total;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}



	
	
	
}
