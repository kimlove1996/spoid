package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		  rDao.scoreAvg();
		  
		  
		  
		  System.out.println("====>index 페이지  조회 결과 : "+list.size());
		  
		  
		  ActionForward forward = new ActionForward();
		  request.setAttribute("indexList", list);
		  forward.setPath(url);
		  forward.setRedirect(false);
		  return forward;
		}


}
