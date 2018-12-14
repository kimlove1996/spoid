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

public class AllMovieAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "movie_all.jsp";
		
		int page = 1;
		
		
		DetailDTO dDto = new DetailDTO();
		MovieDAO mDao = MovieDAO.getInstance();
		CriteriaMVDTO criMDto = new CriteriaMVDTO();

		
		if(request.getParameter("page")!=null) { //보내준 값이 있으면 page값을 받아온다
		//page 값이 null 이면 초반값은 무조건 1페이지
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("영화 페이지 번호 : "+page);
		criMDto.setPage(page);
		List<DetailDTO> list = mDao.listAllMv(criMDto);
		
		
		System.out.println("=====>올해의 영화 조회 결과 : "+list.size()+"개");
		
		//pagination 을 만들기 위한 생성자를 생성
		MoviePageDTO mPageMaker = new MoviePageDTO();
		mPageMaker.setCriMDto(criMDto);
		int totalcount = mDao.totalCount(criMDto);
		System.out.println(totalcount+"개");
		mPageMaker.setTotalCount(totalcount);
		
		System.out.println("끝은 "+mPageMaker.toString());
		
		request.setAttribute("movieAll", list);
		request.setAttribute("pageMaker", mPageMaker);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}