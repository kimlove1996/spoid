package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginOutPlayAction implements Action{
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	  String url = "index.spoid";
	  
	  //session 값을 가져욤
	  HttpSession session = request.getSession();
	  
	  if(session != null) {
		  //session을 초기화 -> 로그인 정보 삭제
		  session.invalidate();
	  }
	  System.out.println(session);
	                                                                                                                                       
	  ActionForward forward = new ActionForward();
	  forward.setPath(url);
	  forward.setRedirect(true);
	  return forward;
	}

}
