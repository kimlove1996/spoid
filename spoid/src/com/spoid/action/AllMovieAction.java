package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dao.ReviewDAO;
import com.spoid.dto.CriteriaMVDTO;
import com.spoid.dto.DetailDTO;
import com.spoid.dto.MoviePageDTO;

public class AllMovieAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_all.jsp";
		
		int page = 1;
		
		
		DetailDTO dDto = new DetailDTO();
		MovieDAO mDao = MovieDAO.getInstance();
		CriteriaMVDTO criMDto = new CriteriaMVDTO();

		
		if(request.getParameter("page")!=null) { //보내준 값이 있으면 page값을 받아온다
		//page 값이 null 이면 초반값은 무조건 1페이지
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("영화 페이지 번호 : "+page);
		criMDto.setPage(page);
		List<DetailDTO> list = mDao.listAllMv(criMDto);
		
		
		System.out.println("=====>올해의 영화 조회 결과 : "+list.size()+"개");
		
		
		ReviewDAO rDao = ReviewDAO.getInstance();
		  double nAvg[] = new double[list.size()];
		  double dAvg[] = new double[list.size()];
		  
		  int nSvg[] = new int[list.size()];
		  int dSvg[] = new int[list.size()];
		  
		  for (int i = 0; i < list.size(); i++) {
			  
			   nAvg[i] = rDao.scoreAvg("naver",list.get(i).getMovieCd());
			   dAvg[i] = rDao.scoreAvg("daum",list.get(i).getMovieCd());
			   
			   if(nAvg[i]<=0) {
				   nSvg[i]=0;
			   }else if(nAvg[i]>0 && nAvg[i]<2) {
				   System.out.println(nAvg[i]);
				   nSvg[i] = 1;
				   System.out.println("스포이드 >>>"+nSvg[i]);
			   } else if(nAvg[i]>=2 && nAvg[i]<4) {
				   System.out.println(nAvg[i]);
				   nSvg[i] = 2;
				   System.out.println("스포이드 >>>"+nSvg[i]);
			   } else if(nAvg[i]>=4 && nAvg[i]<6) {
				   System.out.println(nAvg[i]);
				   nSvg[i] = 3;
				   System.out.println("스포이드 >>>"+nSvg[i]);
			   } else if(nAvg[i]>=6 && nAvg[i]<8) {
				   System.out.println(nAvg[i]);
				   nSvg[i] = 4;
				   System.out.println("스포이드 >>>"+nSvg[i]);
			   } else if(nAvg[i]>=8 && nAvg[i]<10) {
				   System.out.println(nAvg[i]);
				   nSvg[i] = 5;
				   System.out.println("스포이드 >>>"+nSvg[i]);
			   }
			   
			   if(dAvg[i]<=0) {
				   dSvg[i]=0;
			   } else if(dAvg[i]>0 && dAvg[i]<2) {
				   System.out.println(dAvg[i]);
				   dSvg[i] = 1;
				   System.out.println("스포이드 >>>"+dSvg[i]);
			   } else if(dAvg[i]>=2 && dAvg[i]<4) {
				   System.out.println(dAvg[i]);
				   dSvg[i] = 2;
				   System.out.println("스포이드 >>>"+dSvg[i]);
			   } else if(dAvg[i]>=4 && dAvg[i]<6) {
				   System.out.println(dAvg[i]);
				   dSvg[i] = 3;
				   System.out.println("스포이드 >>>"+dSvg[i]);
			   } else if(dAvg[i]>=6 && dAvg[i]<8) {
				   System.out.println(dAvg[i]);
				   dSvg[i] = 4;
				   System.out.println("스포이드 >>>"+dSvg[i]);
			   } else if(dAvg[i]>=8 && dAvg[i]<10) {
				   System.out.println(dAvg[i]);
				   dSvg[i] = 5;
				   System.out.println("스포이드 >>>"+dSvg[i]);
			   }
		  }
		  
		  System.out.println("====>boxoffice 페이지  조회 결과 : "+list.size());
		  System.out.println(nAvg[1]+", "+dAvg[1]);
		  System.out.println(nSvg[9]+"============"+dSvg[9]);
		
		//pagination 을 만들기 위한 생성자를 생성
		MoviePageDTO mPageMaker = new MoviePageDTO();
		mPageMaker.setCriMDto(criMDto);
		int totalcount = mDao.totalCount(criMDto);
		System.out.println(totalcount+"개");
		mPageMaker.setTotalCount(totalcount);
		
		System.out.println("끝은 "+mPageMaker.toString());
		
		request.setAttribute("movieAll", list);
		request.setAttribute("pageMaker", mPageMaker);
		
		request.setAttribute("nAvg", nAvg);
		request.setAttribute("dAvg", dAvg);
		request.setAttribute("nSvg", nSvg);
		request.setAttribute("dSvg", dSvg);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}