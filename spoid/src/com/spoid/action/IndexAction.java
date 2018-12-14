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
		  for (int i = 0; i < list.size(); i++) {
			  
			   nAvg[i] = rDao.scoreAvg("naver",list.get(i).getMovieCd());
			   dAvg[i] = rDao.scoreAvg("daum",list.get(i).getMovieCd());
			   System.out.println(nAvg[i]);
		}
		  
		  System.out.println("====>index 페이지  조회 결과 : "+list.size());
		  System.out.println(nAvg[1]+", "+dAvg[1]);

		  ActionForward forward = new ActionForward();
		  request.setAttribute("indexList", list);
		  request.setAttribute("nAvg", nAvg);
		  request.setAttribute("dAvg", dAvg);
		  
		  forward.setPath(url);
		  forward.setRedirect(false);
		  return forward;
		}


}
