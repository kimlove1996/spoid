package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MovieDAO;
import com.spoid.dto.DetailDTO;

public class BoxOfficeAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse respone) throws ServletException, IOException {
		String url = "movie_boxoffice.jsp";
		
		
		System.out.println("====> 박스오피스 조회");
		
		MovieDAO mDao = MovieDAO.getInstance();
		List<DetailDTO> list = mDao.boxOfficeList();
		
		request.setAttribute("bList", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}