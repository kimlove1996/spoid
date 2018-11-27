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
import com.spoid.action.MemberHintPlayAction;
import com.spoid.action.MemberPageAtcion;
import com.spoid.action.MemberPlayAction;
import com.spoid.action.MemberUpdateAction;
import com.spoid.action.MemberUpdatePlayAction;
import com.spoid.action.PasswordAction;
import com.spoid.action.PwCheckAction;
import com.spoid.action.PwdUpdatePlayAction;

/**
 * Servlet implementation class spoidFrontController
 */
@WebServlet("/spoidFrontController")
public class SpoidController extends HttpServlet
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
	  if (command.equals("/index.spoid"))
	  {
	    action = new IndexAction();
	    forward = action.excute(request, response);
	  }else if (command.equals("/agreementjoin.spoid")){
	    action = new ConstractAction();
	    forward = action.excute(request, response);
	  }else if (command.equals("/login.spoid")){
	    action = new LoginAction();
	    forward = action.excute(request, response);
	  }else if(command.equals("/memberplayaction.spoid")) {
		  //이동
		  action = new MemberPlayAction();
		   forward = action.excute(request, response);		  
	  }/*else if(command.equals("/loginplayaction.spoid")) {
		  action = new LoginPlayAction();
		  forward = action.excute(request, response);
		  
	  }*/else if(command.equals("/loginOut.spoid")) {
		  action = new LoginOutPlayAction();
		  forward = action.excute(request,response);
	  }else if(command.equals("/memberUpdate.spoid")) {
		  action = new MemberUpdateAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberupdateplay.spoid")) {
		
		  action = new MemberUpdatePlayAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/idCheck.spoid")) {
		  action = new IdCheckAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/pwdCheck.spoid")) {
		  action = new PwCheckAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/pwdUpdate.spoid")) {
		  action = new PasswordAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/pwdupdateplayaction.spoid")) {
		  action = new PwdUpdatePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberpage.spoid")) {
		  action = new MemberPageAtcion();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberDelete.spoid")) {
		  action = new DeleteAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memdeleteplayaction.spoid")) {
		  action = new MemberDeletePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/memberhintplay.spoid")) {
		  action = new MemberHintPlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/LoginPlay.spoid")) {
		  action = new LoginPlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardList.spoid")) {
		  action = new BoardListAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardSearch.spoid")) {
		  action = new BoardSearchAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardDetail.spoid")) {
		  action = new BoardDetailAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardviewcnt.spoid")) {
		  action = new BoardViewCntAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardInsert.spoid")) {
		  action = new BoardInsertAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardInsertPlay.spoid")) {
		  action = new BoardInsertPlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boarddownload.spoid")) {
		  action = new BoardLocationAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/boardUpdate.spoid")) {
		  action = new BoardUpdateAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boardupdateplay.spoid")) {
		  action = new BoardUpdatePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/boarddeleteplay.spoid")) {
		  action = new BoardDeleteAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/commentlist.spoid")) {
		  action = new CommentListAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentdeleteplay.spoid")) {
		  action = new CommentDeletePlayAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentInsert.spoid")) {
		  action = new CommentInsertAction();
		  forward = action.excute(request, response);
	  }else if(command.equals("/commentUpdate.spoid")) {
		  action = new CommentUpdateAction();
		  forward = action.excute(request, response);		  
	  }else if(command.equals("/updateGoodcnt.spoid")) {
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

