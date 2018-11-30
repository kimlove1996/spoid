package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;
import com.spoid.dto.MemberDTO;

public class IdPwFindAction implements Action{


	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String hint1 = request.getParameter("hint1");
		String hint2 = request.getParameter("hint2");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = new MemberDTO();
		String pw = mDao.FindMember(id, hint1, hint2);
		String message = null;
		if(!pw.equals("")) {
			message = "1";
		}
		System.out.println("액션 탐"+message);
		
	
		response.setContentType("application/x-json; charset=UTF-8");
		JSONObject jObj = new JSONObject();
		
		jObj.put("message",message);
		jObj.put("pw",pw);
		
		//JSON 객체에 담은 데이터를 호출한 페이지로 전송하는 기능 
		response.setContentType("applicaion/x-json); charset=UTF-8");
		response.getWriter().println(jObj);
		return null;
	}
}
