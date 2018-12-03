package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;

import netscape.javascript.JSObject;

public class PwCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		// id 값을 구하는 방법2가지(Session)
		// 1. Controller 단에서 Session 객체 호출해서 id값을 가져오는 방법
		// 2. View 단에서 Session에 담겨 있는 id 값을 pwd 값과 함께 보내는 방법-> 이게 쉬움
		
		// db 접속
		MemberDAO mDao = MemberDAO.getInstance();
		String message = mDao.confirmPwd(id,pw);
		/*if(message != "") {
			message = "-1";
		}*/
		System.out.println("결과는? "+message);
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		jObj.put("id", id);
		jObj.put("pwd", pw);
		
		//JSON 객체에 담은 데이터를 호출한 페이지로 전송하는 기능 
		response.setContentType("applicaion/x-json); charset=UTF-8");
		response.getWriter().println(jObj);
		return null;
	}

}
