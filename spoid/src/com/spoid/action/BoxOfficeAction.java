package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;

public class BoxOfficeAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse) throws ServletException, IOException {
		String url = "movie_boxoffice.jsp";
		
		
		System.out.println("====> 박스오피스 조회");
		
		MovieDAO mDao = MovieDAO.getInstance();
/*		List<MovieDAO> list = mDao.boxOfficeList();*/
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}