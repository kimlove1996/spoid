package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.spoid.dao.BoardDAO;

public class GoodCntUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bno = request.getParameter("bno");
		System.out.println("====>현재 bno : "+bno);
		BoardDAO bDao = BoardDAO.getInstance();
		
		ActionForward forward = new ActionForward();
		  //ActionForward 클래스의 setPath() 메서드를 호출하고 url 값을 매개변수로 전달
		  //ActionForward 클래ㅔ스의 setRedirect() 메서드를 호출하고
		  // true 라고 하는 boolean 값을 매개변수로 전달
		HttpSession session = request.getSession();
		int result= bDao.updateGoodCnt(bno,session);
		String url = "boardviewcnt.spoid?bno="+bno;
		System.out.println("좋아요 결과 : "+result);
		JSONObject jObj = new JSONObject();
		jObj.put("result", result);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().println(jObj);
		return null;
	}

}
