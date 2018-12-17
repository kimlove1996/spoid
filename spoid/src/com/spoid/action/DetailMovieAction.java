package com.spoid.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dao.ReviewDAO;
import com.spoid.dto.BestDTO;
import com.spoid.dto.DetailDTO;
import com.spoid.dto.PeopleDTO;
import com.spoid.dto.ReviewCountDTO;

public class DetailMovieAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "movie_view.jsp";
		
		String movieCd = request.getParameter("movieCd");
		
		System.out.println("조회할 영화코드 : "+movieCd);
		MovieDAO mDao = MovieDAO.getInstance();
		DetailDTO dDto = mDao.detailMovie(movieCd);
		List<PeopleDTO> plist = mDao.peopleList(movieCd);
		
		ReviewDAO rDao = ReviewDAO.getInstance();
		double nAvg = 0;
		double dAvg = 0;
		  
		int nSvg=0;
		int dSvg=0;
		  
		ArrayList<ReviewCountDTO> list = rDao.scoreCount(movieCd, "naverreview"); 
		ArrayList<ReviewCountDTO> dlist = rDao.scoreCount(movieCd, "daumreview"); 

		
		nAvg = rDao.scoreAvg("naver",movieCd);
		dAvg = rDao.scoreAvg("daum",movieCd);
		
		
		System.out.println("네이버 "+list.size());	   
		if(nAvg<=0) {
		   nSvg=0;
		}else if(nAvg>0 && nAvg<2) {
		   System.out.println(nAvg);
		   nSvg = 1;
		} else if(nAvg>=2 && nAvg<4) {
		   System.out.println(nAvg);
		   nSvg = 2;
		   System.out.println("스포이드 >>>"+nSvg);
		} else if(nAvg>=4 && nAvg<6) {
		   System.out.println(nAvg);
		   nSvg = 3;
		   System.out.println("스포이드 >>>"+nSvg);
		} else if(nAvg>=6 && nAvg<8) {
		   System.out.println(nAvg);
		   nSvg = 4;
		   System.out.println("스포이드 >>>"+nSvg);
		} else if(nAvg>=8 && nAvg<10) {
		   System.out.println(nAvg);
		   nSvg = 5;
		   System.out.println("스포이드 >>>"+nSvg);
		}
			   
		if(dAvg<=0) {
		   dSvg=0;
		} else if(dAvg>0 && dAvg<2) {
		   System.out.println(dAvg);
		   dSvg = 1;
		   System.out.println("스포이드 >>>"+dSvg);
		} else if(dAvg>=2 && dAvg<4) {
		   System.out.println(dAvg);
		   dSvg = 2;
		   System.out.println("스포이드 >>>"+dSvg);
		} else if(dAvg>=4 && dAvg<6) {
		   System.out.println(dAvg);
		   dSvg = 3;
		   System.out.println("스포이드 >>>"+dSvg);
		} else if(dAvg>=6 && dAvg<8) {
		   System.out.println(dAvg);
		   dSvg = 4;
		   System.out.println("스포이드 >>>"+dSvg);
		} else if(dAvg>=8 && dAvg<10) {
		   System.out.println(dAvg);
		   dSvg = 5;
		   System.out.println("스포이드 >>>"+dSvg);
		}
		
		List<BestDTO> bestlist = rDao.selectBest(movieCd);
		System.out.println("====>>>>>>>>>>>>>>>>>>>>>>"+bestlist.size()+"개");
		
		
		System.out.println(dDto.getKor_tit() + "의 출연자 "+plist.size()+"명 조회 ");
		
		request.setAttribute("nlist", list);
		request.setAttribute("dlist", dlist);
		
		request.setAttribute("nAvg", nAvg);
		request.setAttribute("nSvg", nSvg);
		request.setAttribute("dAvg", dAvg);
		request.setAttribute("dSvg", dSvg);
		
		request.setAttribute("dDto", dDto);
		request.setAttribute("pList", plist);
		
		request.setAttribute("bestlist", bestlist);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
