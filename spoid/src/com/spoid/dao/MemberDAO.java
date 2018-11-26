package com.spoid.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.common.DBManager;
import com.spoid.dto.MemberDTO;
import com.spoid.mybatis.SqlMapConfig;

public class MemberDAO {
	
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	
	// 싱글톤으로 new 없이 사용하기 때문에
	// 다른 곳에 new 객체를 생성하지 못하게 private으로 막음
	private MemberDAO(){}
	
	// 싱글톤 패컨 - 객체 생성 1회 실시 후 공유해서 사용
	// 객체 생성 1회 실시(외부에서 instance 변수 접근 불가)
	private static MemberDAO instance = new MemberDAO();
	
	
	
	
	//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static MemberDAO getInstance() {
		return instance;
	}
	//회원가입 = 회원등록
	public int insertMember(MemberDTO mDto) {
		int result = 0; 
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("insertMember",mDto);
			sqlSession.commit(); //insert, update, delete 는 반드시 commit
			System.out.println(mDto.toString());
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return result;
	}
	
	//회원가입 페이지 id 중복 체크(Ajax)
	public String confirmID(String userid) {
		String result = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("confirmID",userid); // selectOne : 한 건만 조회할 때 사용
			
			if(result != null) {
				result = "-1";
			}else {
				result = "1";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
		
		return result;
	}
	
	// 회원가입 hint 값
	public void hintCheck(String id) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.update("hintCheck",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	
	
	
	
	//비밀번호 중복 체크
	public String confirmPwd(String id, String pw) {
		String result = null;
		MemberDTO mDto = new MemberDTO(); // selectOne은 id와 pwd 두개의 변수를 담을 수 없다
		// 그러므로 가방에 담아 객체로 전달해야한다
		mDto.setId(id);
		mDto.setPw(pw);
		try {
			result = sqlSession.selectOne("confirmPwd",mDto); // selectOne : 한 건만 조회할 때 사용
			System.out.println(result);
			if(result != null) {
				result = "-1";
			}else {
				result = "1";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;
	}
	//로그인 기능
	public MemberDTO loginCheck(String id, String pw){
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPw(pw);
		try {
			mDto = sqlSession.selectOne("loginCheck",mDto); // selectOne : 한 건만 조회할 때 사용
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
		return mDto;
	}
	
	//회원정보 수정 (비밀번호 제외)
	public int updateMember(MemberDTO mDto) {
		int result = 0;
		// 그러므로 가방에 담아 객체로 전달해야한다
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("updateMember",mDto); // selectOne : 한 건만 조회할 때 사용
			sqlSession.commit();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;	
	}
	//회원정보 수정 (비밀번호만)
	public int updatePassword(String id, String pw_now, String new_pw) {
		int result = 0;
		// 그러므로 가방에 담아 객체로 전달해야한다
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPw(pw_now);
		try {
			result = sqlSession.update("updatePassword",mDto); // selectOne : 한 건만 조회할 때 사용
			sqlSession.commit();

		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
				
		return result;	
	}
	
	//회원탈퇴(삭제)
	public int deleteMember(String userid) {
		int flag = 0;
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			flag = sqlSession.delete("deleteMember",userid);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			sqlSession.close();
		}
		return flag;
	}

}
