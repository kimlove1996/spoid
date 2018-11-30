package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteAction implements Action{
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "member_out.jsp";
		//회원정보 수정 선행 조건
		// 로그인이 되있어야힘
		// session 이 null 이 아니면 로그인
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser") == null) { //로그인 안됨
			url = "index.spoid";
		}else {
			url = "member_out.jsp";
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
}
