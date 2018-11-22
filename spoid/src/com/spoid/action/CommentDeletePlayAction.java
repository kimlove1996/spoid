package com.spoid.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.BoardDAO;
import com.spoid.dao.ReplyDAO;
import com.spoid.dto.ReplyDTO;

public class CommentDeletePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int flag = -1;
		String url = "board/comment_list.jsp";
		String bno = request.getParameter("bno");
		String rno = request.getParameter("rno");
		System.out.println("삭제할 bno:"+bno+"rno:"+rno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.deleteComment(rno);
		
		if(result > 0) {
			BoardDAO bDao = BoardDAO.getInstance();
			bDao.updateReplyCnt(bno,flag);
			System.out.println(rno + "번 댓글 삭제");
			
		}else {
			System.out.println("실패");
		}
	
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
