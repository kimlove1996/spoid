package com.spoid.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.common.Constants;
import com.spoid.dao.BoardDAO;
import com.spoid.dto.BoardDTO;

public class BoardDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "boardList.bizpoll";
		String sbno = request.getParameter("bno");
		
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardDetailView(sbno); // 해당 게시글 상세 내용을 DTO에 담음
		
		String filename = bDto.getFilename();
		System.out.println("삭제할 파일이름 : "+filename);
		
		
		int result = bDao.boardDelete(sbno);
		
		System.out.println("삭제 결과?");
		if(result > 0) {
			url = "boardList.bizpoll";
			File file = new File(Constants.UPLOAD_PATH+filename);
			file.delete();	
			
			
		}else {
			url = "boardviewcnt.bizpoll?bno="+sbno;
			System.out.println("삭제 완료");
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
