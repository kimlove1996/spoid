package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dto.DetailDTO;

public class AllMovieAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_all.jsp";
		System.out.println("뭐여?>");
		DetailDTO dDto = new DetailDTO();
		MovieDAO mDao = MovieDAO.getInstance();
		List<DetailDTO> list = mDao.listAllMv();
		System.out.println("뭐여?>");
		System.out.println("=====>올해의 영화 조회 결과 : "+list.size()+"개");
		
		request.setAttribute("movieAll", list);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}