package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spoid.dao.MemberDAO;
import com.spoid.dto.MemberDTO;

public class MemberUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "member_update.jsp";
		//회원정보 수정 선행 조건
		// 로그인이 되있어야힘
		// session 이 null 이 아니면 로그인
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("inputid");
		String pw = request.getParameter("inputpw");
		String rpw = request.getParameter("inputrpw");
		String nick = request.getParameter("inputnick");
		String email = request.getParameter("inputemail");
		String hint1 = request.getParameter("hint1");
		String hint2 = request.getParameter("hint2");
		/*String email = request.getParameter("email")+"@"+request.getParameter("email_url");*/
		
		MemberDTO mDto = new MemberDTO(id, pw, rpw, nick, email, hint1, hint2);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mDto);
	
		if(result > 0) { 
			System.out.println("회원 수정완료");
			url = "index.spoid";
			//session 값을 최신 정보로 수정!
			session.removeAttribute("id");
			//최신 회원 정보
			session.setAttribute("loginUser", mDto);
			
		}else {
			System.out.println("수정실패");
			url = "memberUpdate.spoid";
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
