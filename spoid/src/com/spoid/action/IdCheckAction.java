package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;

public class IdCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userid = request.getParameter("id");
		System.out.println("id : "+userid);
		
		if(userid != null) {
			if(userid.trim().equals("")==false) {
				MemberDAO mDao = MemberDAO.getInstance();
			    String msg = mDao.confirmID(userid);
				/*request.setAttribute("IdCount",msg);*/
				System.out.println(msg+"결과값");
				/*Ajax -> json 방식 -> 값을 다신 전달 json방식*/
				JSONObject jObj = new JSONObject();
				
				jObj.put("message",msg);
				jObj.put("id", userid);
				
				//JSON 객체에 담은 데이터를 호출한 페이지로 전송하는 기능 
				response.setContentType("applicaion/x-json); charset=UTF-8");
				response.getWriter().println(jObj);
			}
		}
		return null;
	}

}
