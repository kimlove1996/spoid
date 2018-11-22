package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.BoardDAO;
import com.spoid.dao.ReplyDAO;
import com.spoid.dto.BoardDTO;
import com.spoid.dto.ReplyDTO;

public class CommentInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int flag = 0;
		String bno = request.getParameter("cmt_bno");
		String writer = request.getParameter("cmt_writer");
		String content = request.getParameter("cmt_txt");
		System.out.println("=====>댓글 번호 : "+bno);
		System.out.println("=====>댓글 내용 : "+content);
		System.out.println("=====>댓글 작가 : "+writer);
		
		ReplyDTO rDto = new ReplyDTO(content, writer,bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		int result = rDao.replyInsert(rDto);
		if(result > 0) {
			System.out.println("===>댓글 등록 성공!");
			// 댓글 등록 성공이면 boardlist에서 사용하는 테이블의 댓글 수도 올려주기
			flag=1;
			
			BoardDAO bDao = BoardDAO.getInstance();
			bDao.updateReplyCnt(bno,flag);
			System.out.println("게시글 번호 : "+bno);
			
		}else {
			System.out.println("===>댓글 등록 실패!");
		}
		return null;
	}

}
