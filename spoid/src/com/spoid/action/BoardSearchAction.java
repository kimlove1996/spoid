package com.spoid.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.BoardDAO;
import com.spoid.dto.BoardDTO;
import com.spoid.dto.CriteriaDTO;
import com.spoid.dto.PageMakerDTO;

public class BoardSearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "board/boardlist.jsp";
		String flag = request.getParameter("flag");
		String keyword = request.getParameter("keyword");
		System.out.println("플래그 : "+flag+"키워드 :"+keyword);
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		
		if(request.getParameter("page") != null) { // 보내준 값이 없기 때문에 처음엔 생략
			page = Integer.parseInt(request.getParameter("page"));
		}

		System.out.println("페이지번호 : "+page); 
		criDto.setPage(page); //CriteriaDTO의 setPage 메소드를 호출하라
		

		BoardDAO bDao = BoardDAO.getInstance();	//생성자 
		//게시글 목록(정보글) 출력
		
		criDto.setFlag(flag);
		criDto.setKeyword(keyword);
		
		
		
		List<BoardDTO> searchList = bDao.boardSearch(criDto); 
		request.setAttribute("boardList", searchList);
		
		
		//현재 날짜 출력
		Date today= new Date();
		request.setAttribute("today",today);
				

		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalcount = bDao.totalCount(criDto);
		System.out.println(totalcount);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("끝은?"+pageMaker.toString());
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
