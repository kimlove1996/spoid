package com.spoid.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConstractAction implements Action
{
  public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
  {
    String url = "agreement_join.jsp";
    
    ActionForward forward = new ActionForward();
    forward.setPath(url);
    forward.setRedirect(false);
    return forward;
  }
}
