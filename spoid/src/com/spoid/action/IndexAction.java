package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction implements Action
{
		public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		  String url = "index.jsp";

		  
		  ActionForward forward = new ActionForward();
		  forward.setRedirect(false);
		  return forward;
		}


}
