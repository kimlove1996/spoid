package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dto.CriteriaMVDTO;
import com.spoid.dto.DetailDTO;
import com.spoid.dto.MoviePageDTO;

public class NowMovieAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_nowreleased.jsp";
		
		int page = 1;
		MovieDAO mDao = MovieDAO.getInstance();
		

		
		List<DetailDTO> list = mDao.nowMovie();

		
		System.out.println("=====>현재 상영 중인 영화 조회 결과 : "+list.size()+"개");
		

		request.setAttribute("nowMovie", list);


		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}