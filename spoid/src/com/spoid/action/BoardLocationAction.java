package com.spoid.action;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spoid.common.Constants;

public class BoardLocationAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String filename = request.getParameter("filename");
		
		String path = Constants.UPLOAD_PATH+filename;
		//업로드 경로 가져오기
		
		byte b[] = new byte[4096]; //바이트 배열 생성
		
		//서버에 저장된 파일을 읽기 위한 스트림 생성
		FileInputStream fis = new FileInputStream(path);
		System.out.println("파일이름 : "+filename);
		//파일의 종류(mimeType)
		String mimeType = request.getServletContext().getMimeType(path);
		if(mimeType == null) {
			mimeType = "application/octet-stream; charset=UTF-8";
		}
		
		//파일이름에 한글이 포함된 경우
		//new String(바이트배열, 변환할 인코딩) 8859_1 서유럽 언어
		//header에 특수문자 사용못함, 서유럽언어로 변환
		filename = new String(filename.getBytes("UTF-8"),"8859_1");
		
		//http header
		response.setHeader("Content-Disposition","attachment;filename="+filename);
		//http body
		//OutputStream 생성(서버에서 클라이언트 쓰기)
		ServletOutputStream out = response.getOutputStream();
		
		//실질적으로 파일을 다운로드 해주는 코드
		int numRead;
		while(true) {
			//4096 byte로 쪼개서 파일 읽어오기
			numRead = fis.read(b,0,b.length);
			if(numRead == -1) break; // 파일다운로드 끝남
			out.write(b,0,numRead);
		}
		System.out.println("파일이름2 : "+filename);
		//파일관련리소스 정리
		out.flush();
		out.close();
		fis.close();
		

		return null; // 페이지 이동이 필요없으므로 null
	}

}
