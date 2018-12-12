package com.spoid.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.dto.DetailDTO;
import com.spoid.mybatis.SqlMapConfig;

public class MovieDAO {
	private MovieDAO() {
	}
	private static MovieDAO instance = new MovieDAO();
	public static MovieDAO getInstance() {
		return instance;
	}
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession(); 
	
	//mapper 접급하기 위한 SqlSession
	SqlSession sqlSession;
	public List<DetailDTO> indexMovie(){
		List<DetailDTO> list = new ArrayList<DetailDTO>();
		
		try {
			System.out.println("인덱스 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			list = sqlSession.selectList("indexList");
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}
	public List<DetailDTO> listAllMv() {
		// TODO Auto-generated method stub
		List<DetailDTO> list = new ArrayList<DetailDTO>();
		
		try {
			System.out.println("2018 모든 영화 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			list = sqlSession.selectList("movieAll");
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	
		return list;
		
	}
}
