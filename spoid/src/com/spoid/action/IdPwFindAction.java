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
		
		
		
		
		response.setContentType("application/x-json; charset=UTF-8");
		
		return null;
	}
}
