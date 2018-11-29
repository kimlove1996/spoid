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

public class BoardUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//파일 업로드 처리
		//Constants.UPLOAD_PATH(D:\\upload\\)에 해당되는 파일을 생성한다
		File uploadDir = new File(Constants.UPLOAD_PATH);
		int filesize = 0; 
		
		//저장한 경로가 존재하지 않는다면 
		if(!uploadDir.exists()) {
			uploadDir.mkdir();//폴더를 생성하라
		}
		//multipart/form-data requests를 받기 위한 클래스
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
		String sbno = multi.getParameter("bno");
		int bno = Integer.parseInt(sbno);
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String filename = ""; // (공백)
		String nowFileName = multi.getParameter("now-file-name");
		String nFileSize = multi.getParameter("now-file-size");
		System.out.println(nFileSize+"사이즈");
		int nowFileSize = 0;
		if(!nFileSize.equals("")) { // Filesize에 값이 들어가있다면
			nowFileSize = Integer.parseInt(nFileSize); // nowFilesize에 int형으로 값을 넣어라
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardDetailView(sbno); // 해당 게시글 상세 내용을 DTO에 담음
		String pfilename = bDto.getFilename(); // Filename을 가져옴
		int pfilesize = bDto.getFilesize(); // Filesize를 가져옴
		// 수정해야 하므로 해당 내용들은 과거 첨부 파일 내역이 되는 것!
/*		int result = bDao.boardUpdate(bDto);*/
		System.out.println("과거 첨부 파일 : "+pfilename+", "+pfilesize);
		System.out.println("현재 첨부 파일 : "+nowFileName+", "+nowFileSize);
		
		int flag = 0; // 파일 삭제 분기 변수
		//현재와 과거가 파일 이름이 같고 filesize가 0이면
		if(nowFileName.equals(pfilename)&&nowFileSize == 0) {
			//파일 지우지 않음, filename과 filesize도 수정 하지 않도록 해라
			flag = 1;
		}else { // 파일 이름이 다르거나 filesize가 0이면
			// 과거에 있던 파일을 지워라
			File file = new File(Constants.UPLOAD_PATH+pfilename);
			file.delete();				
		}
	
    	try {
			//Enumeration -> 배열객체(여러개의 파일을 집어넣기 위해)
			Enumeration files = multi.getFileNames(); // 파일이름 받아오기
			while(files.hasMoreElements()) { // 요소들이 있을 때마다 한 건씩 꺼내오기
				//files의 요소들을 String 형태로 file1에 넣는다
				String file1 = (String)files.nextElement(); 
				System.out.println("file1 : "+file1);
				//			multi.getOriginalFileName(file1); //그냥 오리지널 파일 네임
				filename = multi.getFilesystemName(file1); //첨부파일의 이름을 넣는다
						
				System.out.println("저장된 첨부파일 : "+filename);
				if(nowFileSize != 0) { // 같은 파일 이름이지만 용량이 많을 때 이름에 1이 붙는 경우를 해결하는 코드
					/*ex) originalfilename = "AAA1";
					 * 	  filename = "AAA"; => 기존글자 마지막 다음부터 자르면 됨
					 * */
					String result = filename.substring(nowFileName.length());
					System.out.println("TEST : "+nowFileName+" , "+filename+" , "+result);
					
					//파일명을 현재 파일명으로 수정
					if(result.length()>0) { //  파일 이름이 있을 경우
						File file = new File(Constants.UPLOAD_PATH+filename); // 저장된 파일 경로가 들어간 파일생성
						File fileNew = new File(Constants.UPLOAD_PATH+nowFileName); // 현재 파일의 경로가 들어간 파일생성
						file.renameTo(fileNew);//AAA1 -> AAA
						// 저장된 파일을 현재 파일로 바꿔준다
						//DB 에 넣을 파일 정보도 마찬가지
						filename = nowFileName;
						filesize = nowFileSize;
					}
					System.out.println("현재 파일 네임 : "+filename);
				}
				File f1 = multi.getFile(file1); // 첨부파일의 파일을 가져옴
				if(f1 != null) { // file이 null이 아니면
					filesize = nowFileSize; // 파일 사이즈 저장
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	//첨부파일이 없거나 파일네임이 공백이면(파일이 없을 경우)
		if(filename == null || filename.trim().equals("")) {
			filename = "-"; // 파일이름은 "-"으로 바꿈
		}
		
		if(flag == 1) { // 파일 이름이 같고 filesize가 0일 때(아무것도 수정하지 않았을 경우)
			filename = "no"; // filename="no"로 바꿈
			// filename 을 no로 바꾸면 Mapper 쪽에서 no일 경우는 파일사이즈만 바꾸도록
			// 아니면 이름까지 바꾸도록 해줌
			
		}
		System.out.println("마지막 파일 네임 : "+filename);
		bDto = new BoardDTO(bno, title, content, writer,filename, filesize);
		int res = bDao.boardUpdate(bDto);
		if(res!=0) {
			System.out.println("수정 성공!!!!!");
		}
		String uploadfile = multi.getParameter("file_name");
		System.out.println("========게시글 수정========");
		System.out.println("bno : "+bno);
		System.out.println("title : "+title);
		System.out.println("content : "+content);
		System.out.println("writer : "+writer);
		System.out.println("upload : "+uploadfile);
		System.out.println();
		System.out.println("filesize : "+filesize);
		System.out.println("postfile : "+pfilename);
		

		
		String url = "boardviewcnt.spoid?bno="+bno;
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
