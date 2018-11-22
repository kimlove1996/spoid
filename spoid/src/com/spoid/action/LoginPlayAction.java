package com.spoid.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;
import com.spoid.dto.MemberDTO;

public class LoginPlayAction implements Action{


	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
/*		String success_url = "index.bizpoll";
		String fail_url = "login.bizpoll";*/
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDTO mDto = new MemberDTO();
		MemberDAO mDao = MemberDAO.getInstance();
		System.out.println("테스트 : "+id+pwd);
		HttpSession session = request.getSession();
		mDto = mDao.loginCheck(id, pwd);
		String message=null;
		ActionForward forward = new ActionForward();
		if(mDto != null) {
			System.out.println("성공!!!");
			session.removeAttribute("id");
			session.setAttribute("loginUser",mDto);
			message = "1";
/*			
			//session에 login 회원정보를 담아야함
			forward.setPath(success_url);*/
		}else {
			System.out.println("실패!!");
			message = "-1";
	/*		forward.setPath(fail_url);*/
		}
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		return null;
	}
}
