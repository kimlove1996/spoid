package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.BoardDAO;
import com.spoid.dao.ReplyDAO;
import com.spoid.dto.ReplyDTO;

public class CommentUpdateAction implements Action {

	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int flag = 0;
		String bno = request.getParameter("cmt_bno2");
		String writer = request.getParameter("cmt_writer2");
		String content = request.getParameter("cmt_txt2");
		String rno = request.getParameter("cmt_rno2");
		System.out.println("=====>댓글 번호 : "+bno);
		System.out.println("=====>댓글 내용 : "+content);
		System.out.println("=====>댓글 작가 : "+writer);
		System.out.println("=====>댓글 번호 : "+rno);
		
		ReplyDTO rDto = new ReplyDTO(content, writer,bno);
		rDto.setRno(Integer.parseInt(rno));
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyUpdate(rDto);
		if(result > 0) {
			System.out.println("===>댓글 수정 성공!");
			// 댓글 등록 성공이면 boardlist에서 사용하는 테이블의 댓글 수도 올려주기
			
		}else {
			System.out.println("===>댓글 수정 실패!");
		}
		return null;
	}

}
