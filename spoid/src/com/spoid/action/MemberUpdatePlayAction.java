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
		
		String id = request.getParameter("mem_id");
		String pwd = request.getParameter("mem_pwd");
		String name = request.getParameter("mem_name");
		String birth = request.getParameter("birth_year")+request.getParameter("monthselect")+request.getParameter("birth_day");
		String phone = request.getParameter("phone_num")+request.getParameter("phone");
		String zipcode = request.getParameter("zipcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String email = request.getParameter("email")+"@"+request.getParameter("email_url");
		
		MemberDTO mDto = new MemberDTO(id,pwd,name,birth,phone,zipcode,addr1,addr2,email);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mDto);
	
		if(result > 0) { 
			url = "index.bizpoll";
			//session 값을 최신 정보로 수정!
			session.removeAttribute("id");
			//최신 회원 정보
			session.setAttribute("loginUser", mDto);
			
		}else {
			url = "memberUpdate.bizpoll";
		}
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
