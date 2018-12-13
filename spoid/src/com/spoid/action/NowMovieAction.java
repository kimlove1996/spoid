package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dto.DetailDTO;

public class NowMovieAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_nowreleased.jsp";
		
		
		MovieDAO mDao = MovieDAO.getInstance();
		List<DetailDTO> list = mDao.nowMovie();
		
		
		System.out.println("현재 상영작 ==> "+list.size()+"건 출력!");
		
		request.setAttribute("nowMovie", list);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}