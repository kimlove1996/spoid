package com.spoid.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.MemberDAO;
import com.spoid.dao.ProductDAO;
import com.spoid.dto.MemberDTO;
import com.spoid.dto.ProductDTO;

public class MemberPlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  request.setCharacterEncoding("UTF-8");
		  String fail_url = "agreement_join.jsp";
		  //페이지 이동 기능 X
		  String success_url = "welcome.jsp";
		  String id = request.getParameter("mem_id");
		  String pwd = request.getParameter("mem_pwd");
		  String name = request.getParameter("mem_name");
		  String birth = request.getParameter("birth_year")+request.getParameter("monthselect")+request.getParameter("birth_day");
		  String phone = request.getParameter("phone_num")+request.getParameter("phone");
		  String zipcode = request.getParameter("zipcode");
		  String addr1 = request.getParameter("addr1");
		  String addr2 = request.getParameter("addr2");
		  String email = request.getParameter("email")+"@"+request.getParameter("email_url");
		  System.out.println(phone+"전화");
		  MemberDTO mDto = new MemberDTO(id,pwd,name,birth,phone,zipcode,addr1,addr2,email);
		  // 1.class 설계
		  // 2. 객체 생성
		  // 3. 객체(인스턴스) 사용
		  
	      //싱글톤 패턴
		  //객체 생성은 한 번만 이루어지고
		  //나머지는 생성된 객체를 빌려 쓰는 형태로 작성됨
		  
		  //장점
		  //1. 코드 간결화
		  //2. 유지 보수에 좋음
		  //3. 메모리 효율 -!!!
		  MemberDAO mDao = MemberDAO.getInstance();

		  
		  
		  
		  int result = mDao.insertMember(mDto);
		  System.out.println("회원가입 여부 : "+result);
		  //MemberDAO 클래스의 insertMember() 메서드를 호출하고
		  //View 단에서 전달한 데이터를 mDto 앞에 보낸다
		  ActionForward forward = new ActionForward();
		  //ActionForward 클래스의 setPath() 메서드를 호출하고 url 값을 매개변수로 전달
		  if(result>0) {
			  
			  forward.setPath(success_url);
		  }else {
			  forward.setPath(fail_url);
		  }
		  //ActionForward 클래ㅔ스의 setRedirect() 메서드를 호출하고
		  // true 라고 하는 boolean 값을 매개변수로 전달
		  forward.setRedirect(false);

		
		return forward;
	}

}
