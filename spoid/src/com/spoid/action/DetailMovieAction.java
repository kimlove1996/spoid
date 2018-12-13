package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dto.DetailDTO;
import com.spoid.dto.PeopleDTO;

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
		
		
		System.out.println(dDto.getKor_tit() + "의 출연자 "+plist.size()+"명 조회 ");
		
		request.setAttribute("dDto", dDto);
		request.setAttribute("pList", plist);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
