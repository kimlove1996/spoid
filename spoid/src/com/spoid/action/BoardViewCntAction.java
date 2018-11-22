package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spoid.dao.BoardDAO;

public class BoardViewCntAction implements Action{
	//게시글 조회 수 증가
	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bno = request.getParameter("bno");
		
		  
		BoardDAO  bDao = BoardDAO.getInstance();
		
		String url = "boardDetail.bizpoll?bno="+bno;                                                                                                                                  
		
		//조회 수 1 증가
		//Session을 활용한 조회수 증가 방지
		HttpSession session = request.getSession();
		bDao.viewCnt(bno,session);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
