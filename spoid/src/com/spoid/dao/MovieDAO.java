package com.spoid.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.spoid.dto.DetailDTO;
import com.spoid.dto.PeopleDTO;
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
	public DetailDTO detailMovie(String movieCd) {
		// TODO Auto-generated method stub
		DetailDTO dDto = null;
		try {
			System.out.println("상세영화 페이지 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			dDto = sqlSession.selectOne("detailMovie",movieCd);
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	
		return dDto;
	}
	public List<PeopleDTO> peopleList(String movieCd) {
		// TODO Auto-generated method stub
		List<PeopleDTO> list = new ArrayList<PeopleDTO>();
	
		try {
			System.out.println("감독 및 배우 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			list = sqlSession.selectList("peopleList",movieCd);
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	
		return list;
	}
	public List<DetailDTO> nowMovie() {
		// TODO Auto-generated method stub
		List<DetailDTO> list = new ArrayList<DetailDTO>();
		
		try {
			System.out.println("현재 상영작 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			list = sqlSession.selectList("nowMVList");
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	
		return list;
	}
	public List<DetailDTO> boxOfficeList() {
		// TODO Auto-generated method stub
		List<DetailDTO> list = new ArrayList<DetailDTO>();
		try {
			System.out.println("박스 오피스 조회!!");
			sqlSession = sqlSessionFactory.openSession();
			list = sqlSession.selectList("indexList");
			
			System.out.println("총 "+list.size()+"건의 박스오피스 영화 조회 성공!!!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
