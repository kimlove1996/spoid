package com.spoid.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.dao.ProductDAO;
import com.spoid.dto.ProductDTO;

public class IndexAction implements Action
{
		public ActionForward excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		  String url = "index.jsp";
		  
/*		  ProductDAO pDao = new ProductDAO();
		  ArrayList<ProductDTO> bestlist = new ArrayList<>();
		  
		  bestlist = pDao.bestView();
		  System.out.println(bestlist.size());
*/		 
		  //싱글톤 패턴
		  ProductDAO pDao = ProductDAO.getInstance();
		  List<ProductDTO> bestList = pDao.bestView();
		  request.setAttribute("bestlist", bestList);
		  List<ProductDTO> newList = pDao.newView();
		  request.setAttribute("newlist", newList);
		  ActionForward forward = new ActionForward();
		  List<ProductDTO> eventList = pDao.eventView();
		  request.setAttribute("eventlist", eventList);
		  forward.setPath(url);
		  
		  forward.setRedirect(false);
		  return forward;
		}


}
