package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MemberDAO;
import com.spoid.dto.MemberDTO;

public class MemberHintPlayAction implements Action  {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  request.setCharacterEncoding("UTF-8");
		  
		  String id = request.getParameter("hint_id");
		  String hint1 = request.getParameter("hint1");
		  String hint2 = request.getParameter("hint2");
		  
		  MemberDAO mDao = MemberDAO.getInstance();
		  MemberDTO mDto = new MemberDTO(id, hint1, hint2);
		  System.out.println("action단에서 이동!!!!!!!!!"+mDto.toString());
		  
		  int result = mDao.hintCheck(mDto);
		  
		  System.out.println("힌트값 여부 : "+result);
		  
		  if(result>0) {
			  System.out.println("힌트입력 성공");
		  }else {
			  System.out.println("힌트입력ㄴ 실패");
		  }
		  
		
		return null;
	}

}
