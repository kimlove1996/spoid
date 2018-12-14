package com.spoid.dto;

public class MoviePageDTO {
	private int totalCount;	//전체 데이터 개수
	private int startPage; // 시작 페이지 번호
	private int endPage;   // 끝 페이지 번호
	private boolean prev;  // 이전 페이지
	private boolean next;  // 다음 페이지
	private int displayPageNum = 50; //화면에 보이는 블럭 수
	private int finalPage;
	private CriteriaMVDTO criMDto; //page,perPage 등...
	
	public int getFinalPage() {
		return finalPage;
	}

	public void setFinalPage(int finalPage) {
		this.finalPage = finalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	private void calcData() {
		//Math 클래스의 ceil 메서드는 무조건 소수점을 올림함 0.2 = 1로 처리
		endPage = (int)Math.ceil(criMDto.getPage()/(double)displayPageNum)*displayPageNum;
						//ceil(1 /10)=>1*10 = 10
		startPage = (endPage-displayPageNum)+1; //1
		
		int tempEndPage = (int)(Math.ceil(totalCount/(double)(criMDto.getPerPageNum()/criMDto.getPage())));
		
		//파이널 페이지 세팅
		setFinalPage(tempEndPage);
		
		//tempEndPage = 2
		if(endPage > tempEndPage) {
			endPage = tempEndPage; // endPage = 2
		}
		//prev : 이전버튼 만들기
		prev = startPage == 1? false : true; // 1이 맞음으로  false
		next = (endPage*(criMDto.getPerPageNum()/criMDto.getPage()))>=totalCount ? false : true;
		// 2*(10/1) >=17? -> 맞음으로 false!
		// next = false
		
	}
	
	
	
	
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public CriteriaMVDTO getCriMDto() {
		return criMDto;
	}

	public void setCriMDto(CriteriaMVDTO criMDto) {
		this.criMDto = criMDto;
	}

	@Override
	public String toString() {
		return "MoviePageDTO [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", finalPage="
				+ finalPage + ", criMDto=" + criMDto + "]";
	}



}
