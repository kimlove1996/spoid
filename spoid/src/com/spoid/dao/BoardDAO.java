package com.spoid.dao;



import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.dto.BoardDTO;
import com.spoid.dto.CriteriaDTO;
import com.spoid.dto.ReplyDTO;
import com.spoid.mybatis.SqlMapConfig;

public class BoardDAO {
	private int bno;
	private String category;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
	private int replycnt;
	private int goodcnt;
	private String filename;
	private int filesize;
	
	private BoardDAO(){}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	
	public List<BoardDTO> boardListAll(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		
		try {
			
			list = sqlSession.selectList("boardList",criDto);
			System.out.println(criDto.getCategory()+"카테고리");
			System.out.println("조건식에 맞는 리스트 수는?"+list);
			for(int i=0; i<list.size(); i++) {
				System.out.println(list.get(i).getCategory());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}

	public int totalCount(CriteriaDTO criDto) {
		// TODO Auto-generated method stub
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			System.out.println(criDto.getCategory()+"?");
			result = sqlSession.selectOne("countPaging",criDto);
			System.out.println("카운트 페이징 "+result);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public List<BoardDTO> boardSearch(CriteriaDTO criDto) {
		// TODO Auto-generated method stub
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = null;
		try {
			list = sqlSession.selectList("searchList",criDto);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
	}

	public BoardDTO boardDetailView(String bno) {
		// TODO Auto-generated method stub
		sqlSession = sqlSessionFactory.openSession();
		BoardDTO bDto = null;
		try {
			bDto = sqlSession.selectOne("boardDetailView",bno);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();

		}
		return bDto;
	}

	public void viewCnt(String bno, HttpSession countSession) {
		// TODO Auto-generated method stub
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			int result = 0;
			long update_time = 0;
			
			//조회수를 증가할 때 생기는 read_time_게시글 번호가 없으면
			//현재 처음 조회수를 1증가하는 경우
			// ex) bno = 50
			// read_time_50 이라는 값을 가져와라
			// 처음 사용할 땐 당연히 없으므로 null 값이 된다
			if(countSession.getAttribute("read_time_"+bno) != null) { // 가져올 수 있는 경우
				update_time = (long)countSession.getAttribute("read_time_"+bno);
			}
			
			//현재 시간을 담는다
			long current_time = System.currentTimeMillis(); // ex) 10시 30분 5초
			
			//현재 시간과 조회 수 1증가한 시간을 비교하여 24시간(1일)이 지났으면
			//조회수 1증가
			
			if(current_time - update_time > 24*60*60*1000) {//(10000=10초) -> 하루동안
			    sqlSession.update("viewCnt",bno);
				sqlSession.commit();
				
				//조회 수 1증가한 시간을 session에 담는다
				countSession.setAttribute("read_time_"+bno,current_time);
				
				//session 저장소에
				//read_time_50 이라는 방을 하나 만들고
				// 현재 시간을 저장(10시 30분 5초)
			}
			// 설정한 시간보다 적을 경우 값은 바뀌지 않는다

			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	public int boardInsert(BoardDTO bDto) {
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardInsert",bDto);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public int boardUpdate(BoardDTO bDto) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			System.out.println("bno : "+bDto.getBno());
			result = sqlSession.update("boardUpdate", bDto);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	public int boardDelete(String bno) {
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("boardDelete",bno);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public void updateGoodCnt(String bno) {
		// TODO Auto-generated method stub
		sqlSession = sqlSessionFactory.openSession();
		try {
			int result = sqlSession.update("updateGoodCnt", bno);
			System.out.println("수정 결과  "+ result);
			sqlSession.commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
			
	}

	public int updateReplyCnt(String bno, int flag) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			BoardDTO bDto = new BoardDTO();
			bDto.setBno(Integer.parseInt(bno));
			bDto.setFlag(flag);
			result = sqlSession.update("updateReplyCnt", bDto);
			sqlSession.commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	
		return result;
	}
		
	public int updateGoodCnt(String bno, HttpSession countSession) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession = sqlSessionFactory.openSession();
			
				long update_time = 0;
				
				//조회수를 증가할 때 생기는 read_time_게시글 번호가 없으면
				//현재 처음 조회수를 1증가하는 경우
				// ex) bno = 50
				// read_time_50 이라는 값을 가져와라
				// 처음 사용할 땐 당연히 없으므로 null 값이 된다
				if(countSession.getAttribute("read_time_"+bno) != null) { // 가져올 수 있는 경우
					update_time = (long)countSession.getAttribute("read_time_"+bno);
				}
				
				//현재 시간을 담는다
				long current_time = System.currentTimeMillis(); // ex) 10시 30분 5초
				
				//현재 시간과 조회 수 1증가한 시간을 비교하여 24시간(1일)이 지났으면
				//조회수 1증가
				
				if(current_time - update_time > 0) {//(10000=10초) -> 하루동안
					result = sqlSession.update("updateGoodCnt", bno);
					sqlSession.commit();					
					//조회 수 1증가한 시간을 session에 담는다
					countSession.setAttribute("read_time_"+bno,current_time);
					
					//session 저장소에
					//read_time_50 이라는 방을 하나 만들고
					// 현재 시간을 저장(10시 30분 5초)
				}
				// 설정한 시간보다 적을 경우 값은 바뀌지 않는다


			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
		
	
		return result;
		
	}
	
		

}
