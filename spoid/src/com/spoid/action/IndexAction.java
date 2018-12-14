package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.NavigationFilter;

import com.spoid.dao.MovieDAO;
import com.spoid.dao.ReviewDAO;
import com.spoid.dto.BoxOfficeDTO;
import com.spoid.dto.DetailDTO;

public class IndexAction implements Action
{
		public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		  String url = "index.jsp";
		  
		  BoxOfficeDTO bDto = new BoxOfficeDTO();
		  DetailDTO dDto = new DetailDTO();
		 
		  MovieDAO mDao = MovieDAO.getInstance();
		  List<DetailDTO> list = mDao.indexMovie();
		  
		  ReviewDAO rDao = ReviewDAO.getInstance();
		  double nAvg[] = new double[list.size()];
		  double dAvg[] = new double[list.size()];
		  
		  int nSvg[] = new int[list.size()];
		  int dSvg[] = new int[list.size()];
		  
		  for (int i = 0; i < list.size(); i++) {
			  
			   nAvg[i] = rDao.scoreAvg("naver",list.get(i).getMovieCd());
			   dAvg[i] = rDao.scoreAvg("daum",list.get(i).getMovieCd());
			   
			   if(nAvg[i]<=0) {
				   nSvg[i]=1;
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
				   dSvg[i]=1;
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
		  
		  System.out.println("====>index 페이지  조회 결과 : "+list.size());
		  System.out.println(nAvg[1]+", "+dAvg[1]);

		  ActionForward forward = new ActionForward();
		  request.setAttribute("indexList", list);
		  request.setAttribute("nAvg", nAvg);
		  request.setAttribute("nSvg", nSvg);
		  request.setAttribute("dAvg", dAvg);
		  request.setAttribute("dSvg", dSvg);
		  
		  forward.setPath(url);
		  forward.setRedirect(false);
		  return forward;
		}


}
