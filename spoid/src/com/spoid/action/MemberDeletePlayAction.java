package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.json.simple.JSONObject;

import com.spoid.dao.MemberDAO;

public class MemberDeletePlayAction implements Action{
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "index.spoid";
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		
		
		System.out.println(userid+userpw);
		
		
		HttpSession session = request.getSession();
		
		MemberDAO mDao = MemberDAO.getInstance(); // 객체 빌려오기
		String message = mDao.confirmPwd(userid, userpw);
		
		
		// 회원탈퇴기능
		if(message.equals("-1")) { // 올바른 비밀번호 입력!
			System.out.println("회원삭제");
			// 회원 삭제 동작 메서드
			int flag = mDao.deleteMember(userid);
			if(flag >0) { // 회원삭제 성공
				System.out.println("회원삭제 성공");
				// session을 초기화 => 로그인정보 삭제
				session.invalidate();
			} else { // 회원삭제 실패
				System.out.println("회원삭제 실패");
				
			}
		}
	
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);


		return null;
	}
}
