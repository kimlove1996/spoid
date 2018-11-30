package com.spoid.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.dto.MemberDTO;
import com.spoid.dto.OneCenterDTO;
import com.spoid.mybatis.SqlMapConfig;

public class OneCenterDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	SqlSession sqlSession;
	private OneCenterDAO(){}
	private static OneCenterDAO instance = new OneCenterDAO();
	public static OneCenterDAO getInstance() {
		return instance;
	}
	
	// 1:1 보내기
	public int insertOneCenter(OneCenterDTO ocDto) {
		int result = 0; 
		sqlSession = sqlSessionFactory.openSession();
		System.out.println(ocDto.toString());
		try {
			result = sqlSession.insert("insertOneCenter",ocDto);
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
