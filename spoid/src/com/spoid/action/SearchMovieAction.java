package com.spoid.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;
import com.spoid.dao.MovieDAO;
import com.spoid.dto.DetailDTO;

public class SearchMovieAction implements Action{
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_search.jsp";
		String keyword = request.getParameter("keyword");
		
		MovieDAO mDao = MovieDAO.getInstance();
		List<DetailDTO> list = mDao.searchMovie(keyword);
		
		
		
		System.out.println(keyword+"에 대한"+ list.size()+"조회 결과");

		request.setAttribute("slist", list);
		request.setAttribute("keyword", keyword);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
