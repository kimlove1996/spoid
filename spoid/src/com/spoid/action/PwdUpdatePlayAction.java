package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;
import com.spoid.dto.MemberDTO;

public class PwdUpdatePlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MemberDTO mDto = new MemberDTO();
		String url = "password_update.jsp";
		String id = request.getParameter("updateId");
		String pwd_now = request.getParameter("pwd_now");
		String new_pwd = request.getParameter("new_pwd");
		
	
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updatePassword(id,pwd_now,new_pwd);
		System.out.println("result : "+result);
		if(result>0) {
			url = "index.bizpoll";
		}else {
			url = "pwdUpdate.bizpoll";
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
