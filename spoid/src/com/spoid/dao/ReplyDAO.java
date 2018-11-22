package com.spoid.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.dto.ReplyDTO;
import com.spoid.mybatis.SqlMapConfig;

public class ReplyDAO {
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	
	// 싱글톤으로 new 없이 사용하기 때문에
	// 다른 곳에 new 객체를 생성하지 못하게 private으로 막음
	private ReplyDAO(){};
	
	// 싱글톤 패컨 - 객체 생성 1회 실시 후 공유해서 사용
	// 객체 생성 1회 실시(외부에서 instance 변수 접근 불가)
	private static ReplyDAO instance = new ReplyDAO();
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	public List<ReplyDTO> replyListAll(String bno){
		List<ReplyDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("replyListAll",bno);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}

	public int deleteComment(String rno) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("deleteComment",rno);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}

	public int replyInsert(ReplyDTO rDto) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("replyInsert", rDto);
			sqlSession.commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}

	public int replyUpdate(ReplyDTO rDto) {
		// TODO Auto-generated method stub
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("replyUpdate", rDto);
			sqlSession.commit();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}

	
	
}
