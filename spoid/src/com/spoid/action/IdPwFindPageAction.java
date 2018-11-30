package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdPwFindPageAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse) throws ServletException, IOException {
		String url = "idpwfind.jsp";
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}