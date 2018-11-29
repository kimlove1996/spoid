package com.spoid.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.OneCenterDAO;
import com.spoid.dto.OneCenterDTO;

public class QnaPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		  
		String id = request.getParameter("inputid");
		String title = request.getParameter("inputQ");
		String content = request.getParameter("input_a");
		
		System.out.println("고객문의 왔나요?"+id+title+content);
		
		OneCenterDAO ocDao = OneCenterDAO.getInstance();
		OneCenterDTO ocDto = new OneCenterDTO(id, title, content);

		int result = ocDao.insertOneCenter(ocDto);
		
		if(result >0 ) {
			System.out.println("고객문의 성공");
		} else {
			System.out.println("고객문의 실패");
		}
		
		return null;
	}

}