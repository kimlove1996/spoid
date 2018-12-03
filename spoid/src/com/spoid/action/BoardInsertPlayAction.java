package com.spoid.action;


import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.spoid.common.Constants;
import com.spoid.dao.BoardDAO;
import com.spoid.dto.BoardDTO;


public class BoardInsertPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "boardList.spoid";
		System.out.println("안탐?");
		//파일 업로드 처리
		//
		File uploadDir = new File(Constants.UPLOAD_PATH);
		int filesize = 0;
		
		//저장할 경로가 없다면 
		if(!uploadDir.exists()) {
			uploadDir.mkdir();//폴더를 생성하라
		}
		//request를 확장시킨 MultiRequest 생성
		//request : String 타입
		//파일 <- request로는 전송불가
		//파일 <- request 를 향상 시킨 MultipartRequest를 사용
		//파일뿐만 아니라 기존에 String 타입도 전부 multi 타입으로 받아야함
		MultipartRequest multi= new MultipartRequest(request, //request
								Constants.UPLOAD_PATH, 		  //파일업로드 디렉토리
								Constants.MAX_UPLOAD, 		  //업로드 최대 용량
								"UTF-8", 					  // 인코딩 
								new DefaultFileRenamePolicy()); // 파일이름중복정책
		
		//Multipart를 사용하기 위해서는 
		// cos.jar라는 라이브러리 추가
		
		String title = multi.getParameter("title");
		String category = multi.getParameter("category");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String filename = ""; // (공백)
		
		try {
			//Enumeration -> 배열객체(여러개의 파일을 집어넣기 위해)
			Enumeration files = multi.getFileNames(); // 파일이름 받아오기
			while(files.hasMoreElements()) { // 한 건씩 꺼내오기
				String file1 = (String)files.nextElement(); 
				filename = multi.getFilesystemName(file1); //첫번재 첨부파일의 이름
				File f1 = multi.getFile(file1); // 첫번째 첨부파일
				if(f1 != null) {
					filesize = (int)f1.length(); // 파일 사이즈 저장
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(filename == null || filename.trim().equals("")) {
			filename = "-";
		}
		String uploadfile = multi.getParameter("uploadfile");
		System.out.println("========게시글 등록========");
		System.out.println("title : "+title);
		System.out.println("category : "+category);
		System.out.println("content : "+content);
		System.out.println("writer : "+writer);
		System.out.println("upload : "+uploadfile);
		System.out.println("filesize : "+filesize);
		BoardDAO bDao = BoardDAO.getInstance();
		
		BoardDTO bDto = new BoardDTO(title, content, writer,filename,filesize);
		bDto.setCategory(category);
		int result = bDao.boardInsert(bDto);
		

		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}
	

}
