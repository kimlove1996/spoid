package com.spoid.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.action.Action;
import com.spoid.action.ActionForward;
import com.spoid.action.BoardDeleteAction;
import com.spoid.action.BoardDetailAction;
import com.spoid.action.BoardInsertAction;
import com.spoid.action.BoardInsertPlayAction;
import com.spoid.action.BoardListAction;
import com.spoid.action.BoardLocationAction;
import com.spoid.action.BoardSearchAction;
import com.spoid.action.BoardUpdateAction;
import com.spoid.action.BoardUpdatePlayAction;
import com.spoid.action.BoardViewCntAction;
import com.spoid.action.CommentDeletePlayAction;
import com.spoid.action.CommentInsertAction;
import com.spoid.action.CommentListAction;
import com.spoid.action.CommentUpdateAction;
import com.spoid.action.ConstractAction;
import com.spoid.action.DeleteAction;
import com.spoid.action.GoodCntUpdateAction;
import com.spoid.action.IdCheckAction;
import com.spoid.action.IndexAction;
import com.spoid.action.LoginAction;
import com.spoid.action.LoginOutPlayAction;
import com.spoid.action.LoginPlayAction;
import com.spoid.action.MemberDeletePlayAction;
import com.spoid.action.MemberPlayAction;
import com.spoid.action.MemberUpdateAction;
import com.spoid.action.MemberUpdatePlayAction;
import com.spoid.action.PasswordAction;
import com.spoid.action.PwCheckAction;
import com.spoid.action.PwdUpdatePlayAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
	  throws ServletException, IOException
	{
	  response.setCharacterEncoding("UTF-8");
	  
	  Action action = null;
	  ActionForward forward = null;
	  
	  String uri = request.getRequestURI();
	  String ctx = request.getContextPath();
	  // uri - ctx = 내가 원하는 Action 경로
	  String command = uri.substring(ctx.length());
	  
	  System.out.println("url : " + uri);
	  System.out.println("ctx : " + ctx);
	  System.out.println("??====>" + command);
	  if (command.equals("/index.bizpoll"))
	  {
	    action = new IndexAction();
	    forward = action.excute(request, response);
	  }else if (command.equals("/agreementjoin.bizpoll")){
	    action = new ConstractAction();
	    forward = action.excute(request, response);
	  }else if (command.equals("/login.bizpoll")){
	    action = new LoginAction();
	    forward = action.excute(request, response);
	  }else if(command.equals("/memberplayaction.bizpoll")) {
		  //이동
		  action = new MemberPlayAction();
		   forward = action.excute(request, response);		  
	  }/*else if(command.equals("/loginplayaction.bizpoll")) {
		  action = new LoginPlayAction();
		  forward = action.excute(request, response);
		  
	  }*/else if(command.equals("/loginOut.bizpoll")) {
		  action = new LoginOutPlayAction();
		  forward = action.excute(request,response);
	  }else if(command.equals("/memberUpdate.bizpoll")) {
		  action = new MemberUpdateAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberupdateplay.bizpoll")) {
		
		  action = new MemberUpdatePlayAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/idCheck.bizpoll")) {
		  action = new IdCheckAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/pwdCheck.bizpoll")) {
		  action = new PwCheckAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/pwdUpdate.bizpoll")) {
		  action = new PasswordAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/pwdupdateplayaction.bizpoll")) {
		  action = new PwdUpdatePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberDelete.bizpoll")) {
		  action = new DeleteAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memdeleteplayaction.bizpoll")) {
		  action = new MemberDeletePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/LoginPlay.bizpoll")) {
		  action = new LoginPlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardList.bizpoll")) {
		  action = new BoardListAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardSearch.bizpoll")) {
		  action = new BoardSearchAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardDetail.bizpoll")) {
		  action = new BoardDetailAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardviewcnt.bizpoll")) {
		  action = new BoardViewCntAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardInsert.bizpoll")) {
		  action = new BoardInsertAction();
		  forward = action.excute(request, response);
				  
	  }else if(command.equals("/boardInsertPlay.bizpoll")) {
		  action = new BoardInsertPlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boarddownload.bizpoll")) {
		  action = new BoardLocationAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardUpdate.bizpoll")) {
		  action = new BoardUpdateAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardupdateplay.bizpoll")) {
		  action = new BoardUpdatePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boarddeleteplay.bizpoll")) {
		  action = new BoardDeleteAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/commentlist.bizpoll")) {
		  action = new CommentListAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentdeleteplay.bizpoll")) {
		  action = new CommentDeletePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentInsert.bizpoll")) {
		  action = new CommentInsertAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentUpdate.bizpoll")) {
		  action = new CommentUpdateAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/updateGoodcnt.bizpoll")) {
		  action = new GoodCntUpdateAction();
		  forward = action.excute(request, response);		 		  
	  }
	  if (forward != null) {
	    if (forward.isRedirect()) //true : sendRedirect
	    {
	      response.sendRedirect(forward.getPath());
	    }
	    else
	    {
	      RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
	      rd.forward(request, response);
	    }
	  }
	}
}

