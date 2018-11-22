package com.spoid.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.BoardDAO;
import com.spoid.dao.ReplyDAO;
import com.spoid.dto.BoardDTO;
import com.spoid.dto.ReplyDTO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//멍청이멍청멍청멍멍멍
		String url = "board/board_detail.jsp";
		String bno = request.getParameter("bno");

		
		BoardDAO bDao =BoardDAO.getInstance();
		BoardDTO boardView = bDao.boardDetailView(bno);
		
		Date today = new Date();
		request.setAttribute("boardView", boardView);
		request.setAttribute("today", today);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
	
}
