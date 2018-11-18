package com.spoid.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.action.Action;
import com.spoid.action.ActionForward;
import com.spoid.action.IndexAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET, POST 둘 다 받음.
		
		// 한글깨짐 방지(POST 방식) : 가장 위에 적어야된다.
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;	// 실제 동작하는 부분. 안보이지만 엄청 많은 동작하는 것들이 만들어진다. 이것을 인터페이스로 만들고 구현화 할것이다.
		ActionForward forward = null;	// forward인지 sendRedirect인지를 설정하는 부분.
		
		//uri = /spoid.index.bizpoll
		//ctx = /spoid
		//command = /index.bizpoll
		// uri - ctx = 내가 원하는 Action경로
		String uri = request.getRequestURI(); // url를 주세요~
		String ctx = request.getContextPath(); // context를 주세요~
		String command = uri.substring(ctx.length()); // /index.bizpoll 
		
		System.out.println("uri" + uri);
		System.out.println("ctx" + ctx);
		System.out.println("페이지 이동 ====>" + command);
		
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			
			action = new IndexAction();//객체 생성
			// 만약 빨간불이 들어오는 이유는 IndexAction이 동작할 클래스를 생성하지 않았기 때문. => 생성 후 f2로 add뭐시기(오버라이드)
			
			forward = action.excute(request, response); // 객체(인스턴스)사용
			// web에서는 무조건 request, response를 매개변수로 받아야 함.
		}
		
		
		// 공통 분기작업(페이지 이동)
		if(forward != null) {
			if(forward.isRedirect()) { // sendRedirect 방식 //true값이 들어있는 것으로 값이 있는것이다.
				response.sendRedirect(forward.getPath()); //센드리다이렉트방식으로 보내는데, forward클래스에서 getpath클래스를 호출합니다.
			}else{	//false:forward방식
				// 목적지 : index.jsp
				// 짐 : bestlist
				// 이동수단 : forward
				
				//아래 두줄은 forward문을 작성하기 위해 필요한 두줄로 설명은 어렵다.
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());//index.jsp가 들어있다.
				rd.forward(request,response);
			}
		}
		
		
		
		
	}

}
