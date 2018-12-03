package com.spoid.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.spoid.dao.BoardDAO;
import com.spoid.dao.MemberDAO;
import com.spoid.dto.BoardDTO;
import com.spoid.dto.CriteriaDTO;
import com.spoid.dto.PageMakerDTO;

public class BoardListAction implements Action{
	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String url = "board/boardlist.jsp";
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		
		if(request.getParameter("page") != null) { // 보내준 값이 없기 때문에 처음엔 생략
			page = Integer.parseInt(request.getParameter("page"));
		}

		System.out.println("페이지번호 : "+page); 
		criDto.setPage(page); //CriteriaDTO의 setPage 메소드를 호출하라
		String code = "new"; //정렬 옵션
		String category = "0"; // 게시글 카테고리
		String flag = null; //게시글 검색옵션(default 1 => 제목 + 내용)
		String keyword = null; // 검색 키워드
		System.out.println("카테고리 : "+request.getParameter("category"));
		if(request.getParameter("key")!=null) {
			code =request.getParameter("key");
		}
		if(request.getParameter("category")!=null) {
			category = request.getParameter("category");
		}
		if(request.getParameter("flag")!=null) {
			System.out.println("=====>게시글 검색 기능 작동!!!!");
			flag = request.getParameter("flag");
			keyword = request.getParameter("keyword");
			System.out.println("키워드 무슨 일?"+keyword);

		}
		criDto.setCode(code);		
		criDto.setCategory(category);
		criDto.setFlag(flag);
		criDto.setKeyword(keyword);		
		request.setAttribute("flag", flag);
		request.setAttribute("keyword", keyword);
		request.setAttribute("category", category);
		System.out.println(page+"페이지  플래그 : "+flag+","+"키워드"+keyword+code+"게시판 분류  : "+category);
		request.setAttribute("code", code);
		



		BoardDAO bDao = BoardDAO.getInstance();	//생성자 
		//게시글 목록(정보글) 출력
		List<BoardDTO> boardList = bDao.boardListAll(criDto); 
		System.out.println(boardList.size()+"개가 출력되야함!");
		request.setAttribute("boardList", boardList); // 검색 결과를 boardList라는 변수에 담는다.
		
		
		//현재 날짜 출력
		Date today= new Date();
		request.setAttribute("today",today); //포맷팅을 위한 오늘 날짜 세팅
				

		// pagination을 만들기 위한 생성자 생성
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		System.out.println("criDto category"+criDto.getCategory());
		int totalcount = bDao.totalCount(criDto);
		System.out.println(totalcount+"개");
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("끝은?"+pageMaker.toString());
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}


}
